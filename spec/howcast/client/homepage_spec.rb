require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::Homepage, "initialize" do
  before do
    @videos = [mock(Howcast::Client::Video)]
  end
  
  it "should create a homepage object with all the inputted attributes" do
    homepage = Howcast::Client::Homepage.new :videos => @videos
    homepage.videos.should == @videos
  end
  
  it "should ignore inputs which are not homepage attributes" do
    homepage = Howcast::Client::Homepage.new :not_an_attribute => "value", :videos => @videos
    homepage.respond_to?(:not_an_attribute).should be_false
    homepage.videos.should == @videos
  end
end

describe Howcast::Client, "videos" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with the correct homepage videos url" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/homepage/staff_videos.xml?api_key=myapikey")).and_return(homepage_videos_xml)
    @hc.homepage
  end
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.homepage
    }.should raise_error(Howcast::ApiKeyNotFound)
  end
  
  it "should set the videos attribute in the homepage model response" do
    videos = @hc.homepage.videos
    videos.size.should == 8
    videos[0].title.should == "How To Display Impeccable Manners"
  end
end
