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
    @hc.should_receive(:open).with(URI.parse "http://api.howcast.com/categories/2.xml?api_key=myapikey").and_return(category_xml)
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
    @hc.category(2).parents.should == [{:id => "1571", :name => "Travel", :permalink => "http://www.howcast.com/categories/1571-Travel"}, {:id => "1584", :name => "African Travel", :permalink => "http://www.howcast.com/categories/1584-African-Travel"}]
  end
  
  it "should set the permalink" do
    @hc.category(2).permalink.should == "http://www.howcast.com/categories/1585-General-African-Travel"
  end
end

describe Howcast::Client, "categories" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with categories.xml" do
    @hc.should_receive(:open).with(URI.parse "http://api.howcast.com/categories.xml?api_key=myapikey").and_return(categories_xml)
    @hc.categories
  end
  
  it "should return an array of top level category objects" do
    @hc.should_receive(:open).and_return(categories_xml)
    categories = @hc.categories
    categories.size.should == 25
    categories.first.name.should == "Arts & Media"
    categories.last.name.should == 'Travel'
  end
end

describe Howcast::Client, "category_id_for" do
  before :each do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(categories_xml)
  end
  
  it "should be able to fetch the category id of a top-level category" do
    @hc.category_id_for("Arts & Media").should == "1-Arts-and-Media"
  end
  
  it "should be able to fetch the category id of a top-level category in a case-insensitive manner" do
    @hc.category_id_for("arts & media").should == "1-Arts-and-Media"
  end

  it "should be able to fetch the category id of a subcategory" do
    @hc.category_id_for("Animation Techniques").should == "6-Animation-Techniques"
  end

  it "should be able to fetch the category id of a subcategory in a case-insensitive manner" do
    @hc.category_id_for("animation techniques").should == "6-Animation-Techniques"
  end

  it "should be able to fetch the category id given a permalink id" do
    @hc.category_id_for("375-Asian-Cooking").should == "375-Asian-Cooking"
  end

  it "should be able to fetch the category id given a permalink id in a case-insensitive manner" do
    @hc.category_id_for("375-asian-cooking").should == "375-Asian-Cooking"
  end

  it "should return nothing if the category name does not exist" do
    @hc.category_id_for("This Category Does Not Exist").should be nil
  end

  it "should return nothing if the permalink id does not exist" do
    @hc.category_id_for("99999-This-Category-Does-Not-Exist").should be nil
  end
end
