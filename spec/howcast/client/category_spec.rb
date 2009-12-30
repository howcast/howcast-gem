require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::Category, "initialize" do
  it "should create a category object with all the inputted attributes" do
    category = Howcast::Client::Category.new :name => "category_title"
    category.name.should == 'category_title'
  end
  
  it "should ignore inputs which are not category attributes" do
    category = Howcast::Client::Category.new :not_an_attribute => "value", :name => "category_title"
    category.respond_to?(:not_an_attribute).should be_false
    category.name.should == "category_title"
  end
end

describe Howcast::Client, "category" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(category_xml)
  end
  
  it "should establish a connection with the correct category url" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/categories/2.xml?api_key=myapikey")).and_return(category_xml)
    @hc.category(2)
  end  
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.category(2)
    }.should raise_error(Howcast::ApiKeyNotFound)
  end

  it "should set the title attribute in the category model response" do
    @hc.category(2).name.should == "General African Travel"
  end
  
  it "should set the parent_id attribute in the category model response" do
    @hc.category(2).parent_id.should == "1584"
  end  
  
  it "should set the parents metadata hash" do
    @hc.category(2).parents.should == [{:id => "1571", :name => "Travel"}, {:id => "1584", :name => "African Travel"}]
  end
end
