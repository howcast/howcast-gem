require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('howcast', '0.4.6') do |x|
  x.description = "Howcast API Ruby Wrapper"
  x.url = "http://github.com/howcast/howcast-gem"
  x.author = "Jingshen Jimmy Zhang"
  x.email = "jimmy@howcast.com"
  x.ignore_pattern = ["tmp/*", "script/*"]
  x.development_dependencies = []
end

Dir['tasks/**/*.rake'].each { |rake| load rake }
