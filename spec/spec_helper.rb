ENV["RAILS_ENV"] ||= "test"
begin
  require 'rspec'
rescue LoadError
  require 'rubygems'
  require 'rspec'
end

require File.expand_path(File.dirname(__FILE__) + "/../lib/howcast")
require File.expand_path(File.dirname(__FILE__) + "/output_capture_helper")
require File.expand_path(File.dirname(__FILE__) + "/xml_fixtures_helper")

RSpec.configure do |config|
  config.include(OutputCaptureHelper) # HACK
  config.include(XmlFixturesHelper)
  config.before :each do
    start_capturing_output
  end
  config.after :each do
    stop_capturing_output
  end
end
