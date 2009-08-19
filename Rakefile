require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('howcast', '0.4.9') do |x|
  x.summary = "Howcast API Ruby Wrapper"
  x.description = <<-EOS
   Howcast offers an Application Programming Interface (API) which allows developers to build applications that interface with Howcast. The Howcast API is RESTful (REpresentational State Transfer) and users of this API will be able: 1) Retreive detailed information about a single video, including metadata such as title, description, video views, rating etc; 2) Retrieve a list of videos restricted by a set of filters offered by Howcast and sorted using several metrics that you can specify (most recent, most views, etc); 3) Search for video; 4) And much more. Note: Before you can use our APIs, you must register an API key, that is submitted with each request.
  EOS
  x.url = "http://github.com/howcast/howcast-gem"
  x.author = "Jingshen Jimmy Zhang"
  x.email = "jimmy@howcast.com"
  x.ignore_pattern = ["tmp/*", "script/*"]
  x.runtime_dependencies = ['hpricot']
  x.development_dependencies = ['hpricot']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
