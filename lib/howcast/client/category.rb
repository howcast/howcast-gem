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
  class Category
    extend WatchAttrAccessors
    include XmlMethods

    attr_accessor :id, :name, :parent_id, :parents, :permalink
    
    # Creates a new Category object which is used to encapsulate all the attributes available
    # from the Howcast Category API. The parents attribute will be an array of category 
    # ancestors of the form:
    #   [{:id => 1, :name => 'root'}, {:id => 2, :name => 'immediate parent'}]
    #
    # === Inputs
    #
    # * <tt>attributes</tt> -- A hash to set the various attributes of the category object
    #
    # === Examples
    # 
    # Initialize a category with name "Arts & Crafts"
    #   Category.new :name => "Arts & Crafts"
    def initialize(attributes={})
      attributes.each do |k, v|
        self.send("#{k}=", v) if self.respond_to?(k)
      end
    end
  end
    
  # Provides access to the Howcast category API.
  # 
  # === Inputs
  #
  # * <tt>id</tt> -- The id of the category to lookup
  #
  # === Outputs
  # 
  # Category object if the id exists or nil if the id doesn't exist or is malformed
  #
  # === Exceptions
  # 
  # * <tt>Howcast::ApiNotFound</tt>
  #
  # === Examples
  # 
  # Get the Howcast category with id 2
  #   Howcast::Client.new.category(2)
  def category(id)
    response = establish_connection("categories/#{id}.xml")
    parse_single_category_xml(response.at(:category))
  end
  
  # Provides access to the Howcast categories API.
  # 
  # === Inputs
  #
  # * <tt>none</tt>
  #
  # === Outputs
  # 
  # Array of top level category objects
  #
  # === Examples
  # 
  # Get the top level Howcast categories
  #   Howcast::Client.new.categories
  def categories(options = {})
    fetch_categories.at('categories').children_of_type('category').inject([]){ |r, i| r << parse_single_category_xml(i) }
	end
  
  def category_id_for key
    fetch_categories do |categories|
      node       = (categories/"//category/name[text-downcase()='#{key.downcase}']/../permalink")
      node       = (categories/"//category/permalink[text-downcase()*='#{key.downcase}']") if node.empty?
      node.text.split("/").last unless node.empty?
    end
  end
  
  private
  def fetch_categories
    @categories ||= establish_connection("categories.xml")
    if block_given?
      yield @categories
    else
      @categories
    end
  end
  
  # Exception here to parse the <parents> tag in a category, will set a category.parents variable
  # which is an array of parent metadata hases
  # [{:id => '123', :name => "root"}, {:id => "1234", :name => "parent"}]
  def parse_single_category_xml(xml)
    hash = {}
    Category.attr_accessors.each do |attribute|
      node_name = attribute.to_s.gsub("_", "-") # xml schema uses hyphens for spaces, but ruby uses underscores
      hash[attribute] = !xml.at(node_name).nil? ? xml.at(node_name).inner_text.strip : ""
    end
    hash[:parents] = (xml.at('parents')/:category).map{ |c| {:id => c.at('id').inner_text.strip, :name => c.at('name').inner_text.strip, :permalink => c.at('permalink').inner_text.strip }} unless xml.at('parents').nil?
    hash.values.all?{|v| v==""} ? nil : Category.new(hash)
  end
end
