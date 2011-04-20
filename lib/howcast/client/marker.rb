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
  class Marker
    extend WatchAttrAccessors
    include XmlMethods
    
    attr_accessor :id, :position, :timemarker, :type, :thumbnail_url, :title, :textile_text, :text
    
    # Creates a new Marker object which is used to encapsulate all the attributes available
    # from the Howcast Video API.
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the marker object
    #
    # === Examples
    # 
    # Initialize a marker with title "Do something"
    #   Marker.new :title => "Do something"
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
end
