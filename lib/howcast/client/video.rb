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
  module WatchAttrAccessors
    def attr_accessor(*args)
      super(*args)
      @attr_accessors ||= []
      @attr_accessors += args
    end
  
    def attr_accessors
      @attr_accessors || []
    end
  end
  
  class Video
    extend WatchAttrAccessors
    attr_accessor :id, :title, :permalink, :thumbnail_url, :category_id, 
      :views, :username, :duration, :created_at, :rating, :description, :width, :height,
      :badges, :easy_steps, :embed
    # Creates a new Video object which is used to encapsulate all the attributes available
    # from the Howcast Video API
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the video object
    #
    # === Examples
    # 
    # Initialize a video with title "hello" and rating 20
    #   Video.new :title => "hello", :rating => 20
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
    
    # Return true if the video contains easy step by step directions, else false
    def easy_steps?
      easy_steps == "true"
    end
  end
    
  # Provides access to the Howcast video API.
  # 
  # === Inputs
  #
  # * <tt>id</tt> -- The id of the video to lookup
  #
  # === Outputs
  # 
  # Video object if the id exists or nil if the id doesn't exist or is malformed
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt>
  #
  # === Examples
  # 
  # Get the Howcast video with id 2
  #   Howcast::Client.new.video(2)
  def video(id)
    response = establish_connection("videos/#{id}.xml")
    parse_single_xml(response.at(:video), Video)
  end
  
  # Provides access to the Howcast list videos API.
  # 
  # === Inputs
  #
  # The options are:
  # * <tt>:page</tt> -- The page number to retrieve (defaults to 1). There are 20 videos per page.
  # * <tt>:sort</tt> -- One of +most_recent+ (default) | +most_viewed+ | +top_rated+
  # * <tt>:filter</tt> -- One of +all+ | +howcast_studios+ (default)
  #
  # === Outputs
  # An array of video objects
  #
  # === Exceptions
  # * <tt>Howcast::ApiNotFound</tt> -- raised if the requested sort and filter is malformed or not available (404)
  #
  # === Examples
  #
  # Get the first page of most recent howcast studios videos.  
  #   Howcast::Client.new.videos
  # Get the third page of top favorites which are featured
  #   Howcast::Client.new.videos(:page => 3, :sort => "top_favorites", :filter => "top_rated")
	def videos(options = {})
    uri = videos_url(options)
    (establish_connection(uri)/:video).inject([]){ |r, i| r << parse_single_xml(i, Video)}
	end
	
	private
  	def videos_url(options={})
      defaults = {:page => nil, :sort => "most_recent", :filter => "howcast_studios", :category_id => nil}
      options = defaults.update(options)
      "videos/#{options[:sort]}/#{options[:filter]}#{"/#{options[:category_id]}" if options[:category_id]}#{"/#{options[:page]}" if options[:page]}.xml"
    end
end
