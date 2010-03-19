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
  class Homepage
    extend WatchAttrAccessors
    attr_accessor :videos
    
    # Creates a new Homepage object which is used to encapsulate all the attributes available
    # from the Howcast homepage API.
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the homepage object
    #
    # === Examples
    # 
    # Initialize a user with an array of videos
    #   Homepage.new :videos => [video1, video2]
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
    
  # Provides access to the Howcast homepage API.
  # 
  # === Outputs
  # 
  # Homepage object
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt>
  #
  # === Examples
  # 
  # Create the Howcast homepage object
  #   Howcast::Client.new.homepage
  def homepage
    response = establish_connection("homepage/staff_videos.xml")
    parse_homepage_videos_xml(response)
  end
  
  private
    def parse_homepage_videos_xml(xml)
      hash = {}
      Homepage.attr_accessors.each do |attribute|
        node_name = attribute.to_s.gsub("_", "-") # xml schema uses hyphens for spaces, but ruby uses underscores
        if node_name == "videos"
          hash[attribute] = videos_for(xml) unless xml.at(node_name).nil?
        else
          hash[attribute] = !xml.at(node_name).nil? ? xml.at(node_name).inner_text.strip : ""
        end
      end
      hash.values.all?{|v| v==""} ? nil : Homepage.new(hash)
    end
end
