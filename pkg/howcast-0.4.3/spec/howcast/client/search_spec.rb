require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client, "search" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with search.xml?q=something&view=videos when query is 'something'" do
    @hc.should_receive(:open).with("http://www.howcast.com/search.xml?q=something&view=videos&api_key=myapikey").and_return(videos_xml)
    @hc.search("something")
  end
  
  it "should establish a connection with search.xml?q=something&view=videos&page=2 when query is 'something' and :page => 2" do
    @hc.should_receive(:open).with("http://www.howcast.com/search.xml?q=something&view=videos&page=2&api_key=myapikey").and_return(videos_xml)
    @hc.search("something", :page => 2)
  end
  
  it "should escape the query when esablishing the connection" do
    @hc.should_receive(:open).with("http://www.howcast.com/search.xml?q=something+%26+something&view=videos&api_key=myapikey").and_return(videos_xml)
    @hc.search("something & something")
  end
  
  it "should append mode=extended when passed in as an option" do
    @hc.should_receive(:open).with("http://www.howcast.com/search.xml?q=something&view=videos&mode=extended&api_key=myapikey").and_return(videos_xml)
    @hc.search("something", :mode => :extended)
  end
  
  it "should raise a Howcast::ApiNotFound if url is invalid" do
    lambda {
      @hc.should_receive(:open).and_raise(URI::InvalidURIError)
      @hc.search("something")
    }.should raise_error(Howcast::ApiNotFound)
  end
  
  it "should return an empty array if there are no results" do
    @hc.should_receive(:open).and_return(blank_videos_xml)
    @hc.search("something").should be_empty
  end
  
  it "should return an array of video objects if there are some returned" do
    @hc.should_receive(:open).and_return(videos_xml)
    videos = @hc.search("something")
    videos.size.should == 3
    videos.first.permalink.should == "http://www.howcast.com/videos/1101-How-To-Pretend-Youre-a-Real-New-Yorker"
    videos.last.permalink.should == "http://www.howcast.com/videos/866-How-To-Make-a-Water-Gun-Alarm-Clock"
  end
end