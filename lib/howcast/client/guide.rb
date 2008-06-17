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

class Howcast::Client
  class Guide
    extend WatchAttrAccessors
    attr_accessor :id, :title, :permalink, :category_id, 
      :views, :username, :created_at, :rating, :description
    # Creates a new Guide object which is used to encapsulate all the attributes available
    # from the Howcast Guide API
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the guide object
    #
    # === Examples
    # 
    # Initialize a guide with title "hello" and rating 20
    #   Guide.new :title => "hello", :rating => 20
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
    
  # REFACTOR: Consider combining with videos method
  # Provides access to the Howcast list guides API.
  # 
  # === Inputs
  #
  # The options are:
  # * <tt>:page</tt> -- The page number to retrieve (defaults to 1). There are 16 guides per page.
  # * <tt>:sort</tt> -- One of +most_recent+ (default) | +most_viewed+ | +top_rated+ | +most_emailed+ | +most_discussed+ | +top_favorites+
  # * <tt>:filter</tt> -- One of +all+ | +featured+ | +howcast_written+ (default) | +community_written+
  #
  # === Outputs
  # An array of guide objects
  #
  # === Exceptions
  # * <tt>Howcast::ApiNotFound</tt> -- raised if the requested sort and filter is malformed or not available (404)
  #
  # === Examples
  #
  # Get the first page of most recent howcast written guides.  
  #   Howcast::Client.new.guides
  # Get the third page of top favorites which are featured
  #   Howcast::Client.new.guides(:page => 3, :sort => "top_favorites", :filter => "featured")
	def guides(options = {})
    uri = guides_url(options)
    (establish_connection(uri)/:guide).inject([]){ |r, i| r << parse_single_xml(i, Guide)}
	end
	
	private
  	def guides_url(options={})
      defaults = {:page => nil, :sort => "most_recent", :filter => "howcast_written", :category_id => nil}
      options = defaults.update(options)
      if options[:category_id].nil?
        uri = "guides/#{options[:sort]}/#{options[:filter]}.xml"
      else
        uri = "guides/#{options[:sort]}/#{options[:filter]}/#{options[:category_id]}.xml"
      end
      uri + uri_suffix(options)
    end
end
