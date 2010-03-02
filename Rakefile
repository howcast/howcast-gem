require 'rubygems'
require 'rake'
require 'spec/rake/spectask'
require 'rake/rdoctask'

task :default => :spec

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "howcast"
    gemspec.summary = "Howcast API Ruby Wrapper"
    gemspec.description = <<-EOS
    Howcast offers an Application Programming Interface (API) which allows
    developers to build applications that interface with Howcast. The Howcast
    API is RESTful (REpresentational State Transfer) and users of this API will
    be able: 1) Retreive detailed information about a single video, including
    metadata such as title, description, video views, rating etc; 2) Retrieve a
    list of videos restricted by a set of filters offered by Howcast and sorted
    using several metrics that you can specify (most recent, most views, etc);
    3) Search for video; 4) And much more. Note: Before you can use our APIs,
    you must register an API key, that is submitted with each request.
    EOS
    gemspec.email = "support@howcast.com"
    gemspec.homepage = "http://github.com/howcast/howcast-gem"
    gemspec.authors = ["Jingshen Jimmy Zhang", "Ian Smith-Heisters"]
    gemspec.add_dependency "hpricot"
    gemspec.add_development_dependency "rspec"
    gemspec.files = FileList['**/*'].exclude('tmp/*', 'script/*', 'tags', 'pkg')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-c)
end


Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
