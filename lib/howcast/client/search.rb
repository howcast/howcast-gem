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

require 'cgi'

class Howcast::Client
  # Provides access to the Howcast video search API.
  #
  # === Inputs
  #
  # * <tt>query</tt> -- The string query which you want to search for
  #   The options are:
  # ** <tt>:page</tt> -- The page number to retrieve (defaults to 1). There are
  #    10 videos per page.
  # ** <tt>:mode</tt> -- Mode to search, using :extended will allow
  #    title:something searches
  #
  # === Outputs
  #
  # An array of video objects
  #
  # === Exceptions
  #
  # * <tt>Howcast::ApiNotFound</tt> -- raised if the requested sort and filter
  #   is malformed or not available (404)
  # * <tt>ArgumentError</tt> -- raised when the required 1 argument isn't
  #   supplied
  #
  # === Examples
  #
  # Get the first page of howcast videos matching 'poker'.
  #   Howcast::Client.new.video_search("poker")
  # Get the third page of howcast videos matching 'traveling'
  #   Howcast::Client.new.video_search("traveling", :page => 3)
  def search(query, options = {})
    defaults = {:view => "videos", :q => query}
    params = defaults.merge options
    do_search params
  end

  # Provides low-level access to the Howcast video search API.
  #
  # === Inputs
  #
  # * <tt>params</tt> -- A hash of params that will be URL encoded and appended
  #   to the URI. You'll have to know what you're doing.
  #
  # Other than its arguments, this method is identical to +search+.
  def advanced_search params
    do_search params
  end

  private
    def do_search params
      uri = search_url params
      (establish_connection(uri)/:video).inject([]){ |r, i| r << parse_single_xml(i, Video)}
    end

    def search_url params
      uri = "search.xml?"
      params[:q] = CGI.escape params[:q] if params[:q]
      uri += hash_to_params params
      uri += uri_suffix(params.merge(:use_ampersand => true)) unless params[:page]
      uri
    end
end
