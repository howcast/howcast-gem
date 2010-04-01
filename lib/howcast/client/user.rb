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
  class User
    extend WatchAttrAccessors
    attr_accessor :login, :firstname, :lastname, :thumbnail_url, :views, :count, :videos
    
    # Creates a new User object which is used to encapsulate all the attributes available
    # from the Howcast user profile API.
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the user object
    #
    # === Examples
    # 
    # Initialize a user with login "someone"
    #   User.new :login => "someone"
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
    
  # Provides access to the Howcast user API.
  # 
  # === Inputs
  #
  # * <tt>login</tt> -- The login/username of the user to lookup
  #
  # === Outputs
  # 
  # User object if the login exists or nil if the login doesn't exist or is malformed
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt>
  #
  # === Examples
  # 
  # Get the Howcast user with login 'someone'
  #   Howcast::Client.new.user('someone')
  def user(login, options = {})
    response = establish_connection("users/#{login}/profile/videos#{"/#{options[:page]}" if options[:page]}.xml")
    parse_single_xml(response, User)
  end
end
