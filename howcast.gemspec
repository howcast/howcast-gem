# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{howcast}
  s.version = "0.4.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jingshen Jimmy Zhang", "Ian Smith-Heisters"]
  s.date = %q{2009-12-28}
  s.description = %q{   Howcast offers an Application Programming Interface (API) which allows developers to build applications that interface with Howcast. The Howcast API is RESTful (REpresentational State Transfer) and users of this API will be able: 1) Retreive detailed information about a single video, including metadata such as title, description, video views, rating etc; 2) Retrieve a list of videos restricted by a set of filters offered by Howcast and sorted using several metrics that you can specify (most recent, most views, etc); 3) Search for video; 4) And much more. Note: Before you can use our APIs, you must register an API key, that is submitted with each request.
}
  s.email = %q{jimmy@howcast.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/howcast/client/base.rb", "lib/howcast/client/category.rb", "lib/howcast/client/search.rb", "lib/howcast/client/video.rb", "lib/howcast/client.rb", "lib/howcast/errors.rb", "lib/howcast.rb", "README.markdown", "tasks/github.rake"]
  s.files = ["CHANGELOG", "howcast.gemspec", "lib/howcast/client/base.rb", "lib/howcast/client/category.rb", "lib/howcast/client/search.rb", "lib/howcast/client/video.rb", "lib/howcast/client.rb", "lib/howcast/errors.rb", "lib/howcast.rb", "License.txt", "Manifest", "Rakefile", "README.markdown", "spec/howcast/client/base_spec.rb", "spec/howcast/client/category_spec.rb", "spec/howcast/client/search_spec.rb", "spec/howcast/client/video_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/github.rake"]
  s.homepage = %q{http://github.com/howcast/howcast-gem}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Howcast", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{howcast}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Howcast API Ruby Wrapper}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
      s.add_development_dependency(%q<hpricot>, [">= 0"])
    else
      s.add_dependency(%q<hpricot>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0"])
  end
end
