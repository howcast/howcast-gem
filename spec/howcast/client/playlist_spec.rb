require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::Playlist, "initialize" do
  it "should create a playlist object with all the inputted attributes" do
    playlist = Howcast::Client::Playlist.new :title => "My Playlist"
    playlist.title.should == 'My Playlist'
  end
  
  it "should ignore inputs which are not playlist attributes" do
    playlist = Howcast::Client::Playlist.new :not_an_attribute => "value", :title => "My Playlist"
    playlist.respond_to?(:not_an_attribute).should be_false
    playlist.title.should == "My Playlist"
  end
end

describe Howcast::Client, "playlist" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(playlist_xml)
  end
  
  it "should establish a connection with the correct playlist url" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/playlists/12345.xml?api_key=myapikey").and_return(playlist_xml)
    @hc.playlist(12345)
  end
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.playlist(12345)
    }.should raise_error(Howcast::ApiKeyNotFound)
  end

  it "should set the id attribute in the playlist model response" do
    @hc.playlist(12345).id.should == "4566"
  end
  
  it "should set the title attribute in the playlist model response" do
    @hc.playlist(12345).title.should == "Eggs-Travaganza!"
  end
  
  it "should set the description attribute in the playlist model response" do
    @hc.playlist(12345).description.should_not be_empty
  end
  
  it "should set the thumbnail url in the playlist model response" do
    @hc.playlist(12345).playlist_thumbnail_url.should == "http://img.howcast.com/thumbnails/1072/hpn_a011_perfect_scrambled_eggs_sd_medium.jpg"
  end
  
  it "should set the videos attribute in the playlist model response" do
    videos = @hc.playlist(12345).videos
    videos.size.should == 9
    videos.each do |video|
      video.title.should_not be_empty
    end
  end
end
