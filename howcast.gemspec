# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{howcast}
  s.version = "0.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jingshen Jimmy Zhang", "Ian Smith-Heisters"]
  s.date = %q{2010-04-01}
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
  s.email = %q{support@howcast.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "CHANGELOG",
     "License.txt",
     "Manifest",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "howcast.gemspec",
     "lib/howcast.rb",
     "lib/howcast/client.rb",
     "lib/howcast/client/base.rb",
     "lib/howcast/client/category.rb",
     "lib/howcast/client/homepage.rb",
     "lib/howcast/client/marker.rb",
     "lib/howcast/client/playlist.rb",
     "lib/howcast/client/search.rb",
     "lib/howcast/client/user.rb",
     "lib/howcast/client/video.rb",
     "lib/howcast/errors.rb",
     "lib/howcast/logging.rb",
     "spec/howcast/client/base_spec.rb",
     "spec/howcast/client/category_spec.rb",
     "spec/howcast/client/homepage_spec.rb",
     "spec/howcast/client/playlist_spec.rb",
     "spec/howcast/client/search_spec.rb",
     "spec/howcast/client/user_spec.rb",
     "spec/howcast/client/video_spec.rb",
     "spec/output_capture_helper.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/string_matchers_helper.rb",
     "spec/xml_fixtures_helper.rb",
     "tasks/github.rake"
  ]
  s.homepage = %q{http://github.com/howcast/howcast-gem}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Howcast API Ruby Wrapper}
  s.test_files = [
    "spec/howcast/client/base_spec.rb",
     "spec/howcast/client/category_spec.rb",
     "spec/howcast/client/homepage_spec.rb",
     "spec/howcast/client/playlist_spec.rb",
     "spec/howcast/client/search_spec.rb",
     "spec/howcast/client/user_spec.rb",
     "spec/howcast/client/video_spec.rb",
     "spec/output_capture_helper.rb",
     "spec/spec_helper.rb",
     "spec/string_matchers_helper.rb",
     "spec/xml_fixtures_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<hpricot>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

