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