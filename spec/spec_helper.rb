ENV["RAILS_ENV"] ||= "test"
begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  require 'spec'
end

require File.expand_path(File.dirname(__FILE__) + "/../lib/howcast")
require File.expand_path(File.dirname(__FILE__) + "/output_capture_helper")
require File.expand_path(File.dirname(__FILE__) + "/xml_fixtures_helper")
require File.expand_path(File.dirname(__FILE__) + "/string_matchers_helper")


Spec::Runner.configure do |config|
  config.include(OutputCaptureHelper)
  config.include(XmlFixturesHelper)
  config.include(StringMatchersHelper)
  config.before :each do
    start_capturing_output
  end
  config.after :each do
    stop_capturing_output
  end
end
