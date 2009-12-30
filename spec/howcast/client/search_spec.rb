require File.dirname(__FILE__) + '/../../spec_helper'

shared_examples_for "a search method" do
  it "should raise a Howcast::ApiNotFound if url is invalid" do
    lambda {
      @hc.should_receive(:open).and_raise(URI::InvalidURIError)
      do_search
    }.should raise_error(Howcast::ApiNotFound)
  end

  it "should return an empty array if there are no results" do
    @hc.should_receive(:open).and_return(blank_videos_xml)
    do_search.should be_empty
  end

  it "should return an array of video objects if there are some returned" do
    @hc.should_receive(:open).and_return(videos_xml)
    videos = do_search
    videos.size.should == 3
    videos.first.permalink.should == "http://www.howcast.com/videos/1101-How-To-Pretend-Youre-a-Real-New-Yorker"
    videos.last.permalink.should == "http://www.howcast.com/videos/866-How-To-Make-a-Water-Gun-Alarm-Clock"
  end
end

describe Howcast::Client, "search" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @method = :search
  end

  def do_search
    @hc.search "something"
  end

  it_should_behave_like "a search method"

  it "should establish a connection with search.xml?q=something&view=videos when query is 'something'" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/search.xml?q=something&view=videos&api_key=myapikey")).and_return(videos_xml)
    @hc.search("something")
  end

  it "should establish a connection with search.xml?q=something&view=videos&page=2 when query is 'something' and :page => 2" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/search.xml?q=something&view=videos&page=2&api_key=myapikey")).and_return(videos_xml)
    @hc.search("something", :page => 2)
  end

  it "should escape the query when esablishing the connection" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/search.xml?q=something+%26+something&view=videos&api_key=myapikey")).and_return(videos_xml)
    @hc.search("something & something")
  end

  it "should append mode=extended when passed in as an option" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/search.xml?q=something&mode=extended&view=videos&api_key=myapikey")).and_return(videos_xml)
    @hc.search("something", :mode => :extended)
  end

end

describe Howcast::Client, "advanced_search" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end

  def do_search
    @hc.advanced_search :q => "something"
  end

  it_should_behave_like "a search method"

  it "should establish a connection to the search path on howcast.com" do
    @hc.should_receive(:open).with(to_s_like(%r{^http://www.howcast.com/search.xml})).and_return(videos_xml)
    @hc.advanced_search({})
  end

  it "should url-encode any passed params" do
    @hc.should_receive(:open).with(to_s_like(%r{q=something})).and_return(videos_xml)
    @hc.advanced_search :q => "something"
  end

  it "should not create default params" do
    @hc.should_receive(:open).with(to_s_like(%r{mode=foo})).and_return(videos_xml)
    @hc.should_not_receive(:open).with(to_s_like(%r{view=}))
    @hc.advanced_search :mode => "foo"
  end
end
