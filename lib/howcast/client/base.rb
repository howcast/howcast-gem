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
require 'hpricot'
require 'open-uri'
require 'uri'

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
      @base_uri ||= URI.parse("http://www.howcast.com")
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
      uri = self.class.base_uri.dup
      relative_path_and_query = '/' + relative_path_and_query unless relative_path_and_query[0] == '/'
      uri.path, uri.query = *relative_path_and_query.split('?')
      h = Hpricot.XML(open(url = attach_api_key(uri)))
      Howcast.log.info "Established connection with: '#{url}'"
      raise Howcast::ApiKeyNotFound if h.at(:error) && h.at(:error).inner_html.match(/Invalid API Key/)
      return h
    rescue URI::InvalidURIError, OpenURI::HTTPError
      raise Howcast::ApiNotFound.new("Invalid URL requested. Refer to the Howcast API for supported URL's")
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
      hash = {}
      klass.attr_accessors.each do |attribute|
        node_name = attribute.to_s.gsub("_", "-") # xml schema uses hyphens for spaces, but ruby uses underscores
        hash[attribute] = !xml.at(node_name).nil? ? xml.at(node_name).inner_text.strip : ""
      end
      hash.values.all?{|v| v==""} ? nil : klass.new(hash)
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

      hash.each do |k, v|
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
end

