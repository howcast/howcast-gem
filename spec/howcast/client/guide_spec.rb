require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::Guide, "initialize" do
  it "should create a guide object with all the inputted attributes" do
    guide = Howcast::Client::Guide.new :title => "guide_title"
    guide.title.should == 'guide_title'
  end
  
  it "should ignore inputs which are not guide attributes" do
    guide = Howcast::Client::Guide.new :not_an_attribute => "value", :title => "guide_title"
    guide.respond_to?(:not_an_attribute).should be_false
    guide.title.should == "guide_title"
  end
end

describe Howcast::Client, "guides" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with guides/most_recent/howcast_written.xml by default" do
    @hc.should_receive(:open).with("http://www.howcast.com/guides/most_recent/howcast_written.xml?api_key=myapikey").and_return(guides_xml)
    @hc.guides
  end
  
  it "should establish a connection with guides/most_recent/howcast_written.xml?page=2 when :page => 2" do
    @hc.should_receive(:open).with("http://www.howcast.com/guides/most_recent/howcast_written.xml?page=2&api_key=myapikey").and_return(guides_xml)
    @hc.guides(:page => 2)
  end
  
  it "should establish a connection with guides/most_viewed/howcast_written.xml when :sort => most_viewed" do
    @hc.should_receive(:open).with("http://www.howcast.com/guides/most_viewed/howcast_written.xml?api_key=myapikey").and_return(guides_xml)
    @hc.guides(:sort => "most_viewed")    
  end
  
  it "should establish a connection with guides/most_viewed/community_written.xml when :sort => most_viewed and :filter => community_written" do
    @hc.should_receive(:open).with("http://www.howcast.com/guides/most_viewed/community_written.xml?api_key=myapikey").and_return(guides_xml)
    @hc.guides(:sort => "most_viewed", :filter => "community_written")    
  end
  
  it "should establish a connection with guides/top_rated/community_written.xml when :sort => top_rated and :filter => community_written" do
    @hc.should_receive(:open).with("http://www.howcast.com/guides/top_rated/community_written.xml?api_key=myapikey").and_return(guides_xml)
    @hc.guides(:sort => "top_rated", :filter => "community_written")    
  end
  
  it "should raise a Howcast::ApiNotFound if url is invalid" do
    lambda {
      @hc.should_receive(:open).and_raise(URI::InvalidURIError)
      @hc.guides
    }.should raise_error(Howcast::ApiNotFound)
  end
  
  it "should return an empty array if there are no results" do
    @hc.should_receive(:open).and_return(blank_guides_xml)
    @hc.guides.should be_empty
  end
  
  it "should return an array of guide objects if there are some returned" do
    @hc.should_receive(:open).and_return(guides_xml)
    guides = @hc.guides
    guides.size.should == 3
    guides.first.permalink.should == "http://www.howcast.com/guides/1101-How-To-Pretend-Youre-a-Real-New-Yorker"
    guides.last.permalink.should == "http://www.howcast.com/guides/866-How-To-Make-a-Water-Gun-Alarm-Clock"
  end
end