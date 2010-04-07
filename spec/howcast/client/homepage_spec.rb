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

describe Howcast::Client, "homepage" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with the correct homepage videos url" do
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_videos.xml?api_key=myapikey")).and_return(homepage_videos_xml)
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_playlists.xml?api_key=myapikey")).and_return(homepage_playlists_xml)
    @hc.homepage
  end
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.homepage
    }.should raise_error(Howcast::ApiKeyNotFound)
  end
  
  it "should set the videos attribute in the homepage model response" do
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_videos.xml?api_key=myapikey")).and_return(homepage_videos_xml)
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_playlists.xml?api_key=myapikey")).and_return(homepage_playlists_xml)
    videos = @hc.homepage.videos
    videos.size.should == 8
    videos[0].title.should == "How To Display Impeccable Manners"
  end
  
  it "should set the playlists attribute in the homepage model response" do
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_videos.xml?api_key=myapikey")).and_return(homepage_videos_xml)
    @hc.should_receive(:open).with(equivalent_uri("http://api.howcast.com/homepage/staff_playlists.xml?api_key=myapikey")).and_return(homepage_playlists_xml)
    playlists = @hc.homepage.playlists
    playlists.size.should == 2
    playlists[0].title.should == "Pranks For the Memories"
    playlists[0].playlist_thumbnail_url.should == "http://img.howcast.com/thumbnails/2721/ppn_milkhouse_buried_cubicle_prank_sd_medium.jpg"
  end
end
