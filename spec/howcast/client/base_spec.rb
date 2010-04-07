require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client, "initialize" do
  it "should create a client object with all the inputted attributes" do
    client = Howcast::Client.new :key => "myapikey"
    client.should be_instance_of(Howcast::Client)
  end
  
  it "should raise a Howcast::ApiKeyNotFound error when no key is supplied" do
    lambda {
      Howcast::Client.new
    }.should raise_error(Howcast::ApiKeyNotFound)
  end
end

describe Howcast::Client, "base_uri" do
  after :each do
    Howcast::Client.instance_variable_set :@base_uri, nil
  end

  it "should use a default base_uri of www.howcast.com" do
    Howcast::Client.base_uri.to_s.should == "http://www.howcast.com"
  end

  it "should allow easily setting the base_url" do
    lambda do
      Howcast::Client.base_uri = URI.parse("http://example.com")
    end.should change{Howcast::Client.base_uri.to_s}.to("http://example.com")
  end

  it "should be easy to set the base_uri with a URI object" do
    Howcast::Client.base_uri = URI::HTTP.new 'http', nil, 'example.com', nil, nil, nil, nil, nil, nil
    Howcast::Client.base_uri.should be_kind_of(URI)
    Howcast::Client.base_uri.host.should == "example.com"
  end

  it "should be easy to set the base_uri with a string" do
    Howcast::Client.base_uri = "http://example.com"
    Howcast::Client.base_uri.should be_kind_of(URI)
    Howcast::Client.base_uri.host.should == "example.com"
  end

  it "should be easy to set the base_uri with a hash" do
    Howcast::Client.base_uri = {:scheme => 'http', :host => 'example.com'}
    Howcast::Client.base_uri.should be_kind_of(URI)
    Howcast::Client.base_uri.host.should == "example.com"
  end

  it "should raise an error when trying to set the base_uri to something weird" do
    lambda do
      Howcast::Client.base_uri = nil
    end.should raise_error(ArgumentError)
  end
end

describe Howcast::Client, "logging" do
  before :each do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(videos_xml)
  end

  it "should log each request by default" do
    @hc.search("something")
    captured_output.join('').should match(/Established connection/)
  end

  it "should be easy to make it less verbose" do
    original_log_level = Howcast.log.level
    begin
      Howcast.log.level = Logger::FATAL
      @hc.search("something")
      captured_output.join('').strip.should == ""
    ensure
      Howcast.log.level = original_log_level
    end
  end
end
