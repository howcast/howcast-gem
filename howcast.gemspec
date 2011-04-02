# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "howcast/version"

Gem::Specification.new do |s|
  s.name        = "howcast"
  s.version     = Howcast::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jingshen Jimmy Zhang", "Ian Smith-Heisters", "Juris Galang"]
  s.email       = ["support@howcast.com"]
  s.homepage    = "http://api.howcast.com/"
  s.summary     = %q{Ruby-bindings for the Howcast API}
  s.description = %q{    Howcast offers an Application Programming Interface (API) which allows
      developers to build applications that interface with Howcast. The Howcast
      API is RESTful (REpresentational State Transfer) and users of this API will
      be able: 1) Retreive detailed information about a single video, including
      metadata such as title, description, video views, rating etc; 2) Retrieve a
      list of videos restricted by a set of filters offered by Howcast and sorted
      using several metrics that you can specify (most recent, most views, etc);
      3) Search for video; 4) And much more. Note: Before you can use our APIs,
      you must register an API key, that is submitted with each request.
  }

  s.rubyforge_project = "howcast"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency(%q<hpricot>, [">= 0"])
  
  s.add_development_dependency(%q<rake>, [">= 0"])
  s.add_development_dependency(%q<rspec>, [">= 0"])
  s.add_development_dependency(%q<ruby-debug>, [">= 0"])
end
