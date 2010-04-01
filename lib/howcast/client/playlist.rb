#--
# Copyright (c) 2010 Howcast Media Inc.
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
  class Playlist
    extend WatchAttrAccessors
    attr_accessor :title, :description, :playlist_thumbnail_url, :videos
    
    # Creates a new Playlist object which is used to encapsulate all the attributes available
    # from the Howcast playlist API.
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the playlist object
    #
    # === Examples
    # 
    # Initialize a playlist with title "My Playlist"
    #   Playlist.new :title => "My Playlist"
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
    
  # Provides access to the Howcast playlist API.
  # 
  # === Inputs
  #
  # * <tt>id</tt> -- The id of the playlist to lookup
  #
  # === Outputs
  # 
  # Playlist object if the id exists or nil if the id doesn't exist or is malformed
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt>
  #
  # === Examples
  # 
  # Get the Howcast playlist with id 12345
  #   Howcast::Client.new.playlist(12345)
  def playlist(id, options = {})
    response = establish_connection("playlists/#{id}.xml")
    parse_single_xml(response, Playlist)
  end
end
