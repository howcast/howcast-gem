#--
# Copyright (c) 2008 Howcast Media Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

require 'rubygems'
require 'benchmark'
require 'timeout'
require 'hpricot'
require 'nokogiri'
require 'open-uri'
require 'uri'

require File.expand_path(File.join(File.dirname(__FILE__), '../hpricot/elements'))
require File.expand_path(File.join(File.dirname(__FILE__), '../ext/string'))

class Howcast::Client
  attr_accessor :key
  
  # Creates a new howcast client to interact with the Howcast API
  #
  # === Inputs
  #
  # Options include:
  #
  # * <tt>key</tt> -- REQUIRED - API key: obtainable from http://www.howcast.com/api_keys/new
  #
  # === Exceptions
  #
  # * <tt>Howcast::ApiKeyNotFound</tt> -- raised if the options[:key] value is nil
  def initialize(options={})
    raise Howcast::ApiKeyNotFound if options[:key].nil?
    @key = options[:key]
  end

  class << self
    def base_uri= new_base_uri
      @base_uri = case new_base_uri
      when URI      then new_base_uri
      when String   then URI.parse new_base_uri
      when Hash     then URI::HTTP.build new_base_uri
      else;         raise ArgumentError, "can't convert URI: #{new_base_uri.inspect}"
      end
    end

    def base_uri
      @base_uri ||= URI.parse("http://api.howcast.com")
    end
  end
  
  protected
  # Establishes a connection with the Howcast API. Will auto append the api key, that was used
  # to instantiate the Client object, to the URL
  #
  # === Inputs
  #
  # * <tt>relative_path</tt> -- should be the path after <tt>http://www.howcast.com/</tt>
  #
  # === Outputs
  # 
  # Hpricot object encapsulating the xml returned from the Howcast API
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt> -- raised if the requested +relative_path+ is malformed or not available (404)
  # * <tt>Howcast::ApiKeyNotFound</tt> -- raised if the +api_key+ is invalid
  #
  # === Examples
  #
  # Get the Hpricot data for most recent howcast studios videos
  #   establish_connection("videos/most_recent/howcast_studios.xml") 
  def establish_connection(relative_path_and_query)
    begin
      uri                      = self.class.base_uri.dup
      relative_path_and_query  = '/' + relative_path_and_query unless relative_path_and_query[0] == '/'
      uri.path, uri.query      = *relative_path_and_query.split('?')

      doc  = nil
      time = Benchmark.realtime do
        doc = Hpricot.XML open(attach_api_key uri)
      end
      Howcast.log.info "Established connection with: '#{uri.to_s}' after #{time * 1000}ms"

      raise Howcast::ApiKeyNotFound \
        if doc.at(:err) && doc.at(:err)['msg'].match(/Invalid API Key/)

      doc
    rescue Timeout::Error
      raise Howcast::ApiError, "Timed-out after #{time * 1000}ms while attempting to access the API at #{uri.to_s}"
    rescue URI::InvalidURIError
      raise Howcast::ApiNotFound, "Invalid URL #{uri.to_s} requested."
    rescue OpenURI::HTTPError => e
      raise Howcast::ApiError, "HTTP error #{e.message} accessing the API at #{uri.to_s}."
    end
  end
  
  # Parses the xml for a single item from +xml+ and creates a new +klass+ object
  #
  # === Inputs
  #
  # * <tt>xml</tt> -- See below for a sample xml input
  # * <tt>klass</tt> -- Class to create - Video | Category supported
  #
  # Sample input xml
  #   <video>
  #      <id>1086</id>
  #      <rating>96</rating>
  #      <title>How To Choose a Paintbrush</title>
  #      <category-id>19</category-id>
  #      <description>
  #         <![CDATA[Yes, you could just use your fingers, but selecting the best brushes for your painting might achieve a slightly more grown-up result.]]>
  #      </description>
  #      <views>362</views>
  #      <permalink>http://www.howcast.com/guides/1086-How-To-Choose-a-Paintbrush</permalink>
  #      <username>michaelrsanchez</username>
  #      <created-at>Thu, 20 Dec 2007 14:14:58 -0800</created-at>
  #    </video>
  #
  # === Outputs 
  # 
  # +klass+ object with initialized attributes
  def parse_single_xml(xml, klass)
    hash = { }
    klass.attr_accessors.each do |attribute|
      node_name = attribute.to_s.gsub("_", "-") # xml schema uses hyphens for spaces, but ruby uses underscores
      if node_name == "category-hierarchy"
        hash[attribute] = category_hierarchy_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "playlist-memberships"
        hash[attribute] = playlist_memberships_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "ingredients"
        hash[attribute] = ingredients_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "markers"
        hash[attribute] = markers_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "related-videos"
        hash[attribute] = related_videos_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "videos"
        hash[attribute] = videos_for(xml) unless xml.at(node_name).nil?
      elsif node_name == "playlist-thumbnail-url"
        # TODO: Resolve this hack, xml attributes aren't named consistently
        hash[attribute] = !xml.at(node_name).nil? ? xml.at(node_name).inner_text.strip : xml.at("thumbnail-url").inner_text.strip
      elsif node_name == "type"
        hash[attribute] = type_for(xml) unless xml.at(node_name).nil?
      elsif %w{ ads-allowed mature-content }.include? node_name
        hash[attribute] = !xml.at(node_name).nil? ? "true" : ""
      else
        hash[attribute] = !xml.at(node_name).nil? ? xml.at(node_name).inner_text.strip : ""
      end
    end
    hash.values.all?{ |v| (v == "") or (v.respond_to?(:empty?) and v.empty?) } ? nil : klass.new(hash)
  end
    
  # Creates parameters to append to a uri
  # 
  # === Inputs
  # 
  # Options are:
  # * <tt>:page</tt> -- the page number
  # * <tt>:use_ampersand</tt> -- boolean to return ampersand (defaults to false)
  #
  # === Outputs
  #
  # A valid suffix string to append to the end of a url
  #
  # === Examples
  #
  # "?page=2"
  #   uri_suffix(:page => 2)
  # "&page=2"
  #   uri_suffix(:page => 3, :use_ampersand => true)
  def uri_suffix(opts)
    opts && opts[:page] ? "#{opts[:use_ampersand] ? '&' : '?'}page=#{opts[:page]}" : ""
  end
  
  # Appends the api key to a uri and returns the appended uri
  # 
  # === Inputs
  # 
  # * <tt>uri</tt> -- the URI object to append the api_key to
  #
  # === Outputs
  #
  # The uri with the api_key appended to the query string
  #
  # === Examples
  #
  #   attach_api_key(URI.parse("http://www.howcast.com")).to_s
  #   => "http://www.howcast.com?api_key=APIKEYHERE"
  #   
  #   attach_api_key(URI.parse("http://www.howcast.com/videos/most_recent/all?page=2")).to_s
  #   => "http://www.howcast.com/videos/most_recent/all?page=2&api_key=APIKEYHERE"
  def attach_api_key(uri)
    uri = uri.dup
    key = "api_key=#{self.key}"
    uri.query = uri.query.to_s.strip != "" ? uri.query+"&"+key : key
    uri
  end

  # From merb/core_ext/hash.rb, line 87
  def hash_to_params hash
    params = ''
    stack = []

    hash.keys.sort{ |a, b| a.to_s <=> b.to_s }.each do |k|
      v = hash[k]
      if v.is_a?(Hash)
        stack << [k,v]
      else
        params << "#{k}=#{v}&"
      end
    end

    stack.each do |parent, h|
      h.each do |k, v|
        if v.is_a?(Hash)
          stack << ["#{parent}[#{k}]", v]
        else
          params << "#{parent}[#{k}]=#{v}&"
        end
      end
    end

    params.chop! # trailing &
    params
  end
    
  private
  def category_hierarchy_for(xml)
    categories = []
    node = xml.at('category-hierarchy')
    node.children_of_type('category').each do |child|
      category = Category.new(:id => child['id'], :parent_id => child['parent_id'], :name => child.inner_text, :permalink => child['permalink'])
      categories << category
    end unless node.nil?
    categories
  end

  def playlist_memberships_for(xml)
    memberships = []
    node = xml.at('playlist-memberships')
    node.children_of_type('playlist').each do |child|
      playlist = Playlist.new(:id => child['id'], :title => child.inner_text)
      memberships << playlist
    end unless node.nil?
    memberships
  end
  
  def ingredients_for(xml)
    ingredients = []
    node = xml.at('ingredients')
    node.children_of_type('ingredient').each do |child|
      ingredients << child.inner_text.strip
    end unless node.nil?
    ingredients
  end
  
  def markers_for(xml)
    markers = []
    node = xml.at('markers')
    node.children_of_type('marker').each do |child|
      markers << parse_single_xml(child, Marker)
    end unless node.nil?
    markers
  end
  
  def type_for(xml)
    node = xml.at('type')
    if node['status'] && node['class']
      Type.new(:name => node.inner_text.strip, :kind => node['class'], :status => node['status'])
    else
      node.inner_text.strip
    end
  end
  
  def related_videos_for(xml)
    related = []
    node = xml.at('related-videos')
    node.children_of_type('video').each do |child|
      related << parse_single_xml(child, Video)
    end unless node.nil?
    related
  end
  
  def videos_for(xml)
    videos = []
    node = xml.at('videos')
    node.children_of_type('video').each do |child|
      videos << parse_single_xml(child, Video)
    end unless node.nil?
    videos
  end
end
