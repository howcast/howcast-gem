require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::User, "initialize" do
  it "should create a user object with all the inputted attributes" do
    user = Howcast::Client::User.new :login => "someone"
    user.login.should == 'someone'
  end
  
  it "should ignore inputs which are not user attributes" do
    user = Howcast::Client::User.new :not_an_attribute => "value", :login => "someone"
    user.respond_to?(:not_an_attribute).should be_false
    user.login.should == "someone"
  end
end

describe Howcast::Client, "user" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(user_videos_xml)
  end
  
  it "should establish a connection with the correct user url" do
    @hc.should_receive(:open).with(URI.parse "http://api.howcast.com/users/someone/profile/videos.xml?api_key=myapikey").and_return(user_videos_xml)
    @hc.user('someone')
  end
  
  it "should support a paging option" do
    @hc.should_receive(:open).with(URI.parse "http://api.howcast.com/users/someone/profile/videos/2.xml?api_key=myapikey").and_return(user_videos_xml)
    @hc.user('someone', :page => 2)
  end
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.user('someone')
    }.should raise_error(Howcast::ApiKeyNotFound)
  end

  it "should set the login attribute in the user model response" do
    @hc.user('someone').login.should == "mrmark86"
  end
  
  it "should set the first name attribute in the user model response" do
    @hc.user('someone').firstname.should == "Mark"
  end
  
  it "should set the last name attribute in the user model response" do
    @hc.user('someone').lastname.should == "Rogers"
  end
  
  it "should set the views attribute in the user model response" do
    @hc.user('someone').views.should_not be_empty
  end
  
  it "should set the count attribute in the user model response" do
    @hc.user('someone').count.should_not be_empty
  end
  
  it "should set the thumbnail url attribute in the user model response" do
    @hc.user('someone').thumbnail_url.should_not be_empty
  end
  
  it "should set the videos attribute in the user model response" do
    videos = @hc.user('someone').videos
    videos.size.should == 12
    videos.each do |video|
      video.title.should_not be_empty
    end
  end
end
