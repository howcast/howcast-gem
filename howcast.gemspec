Gem::Specification.new do |s|
  s.name = %q{howcast}
  s.version = "0.3.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Murray"]
  s.date = %q{2008-06-03}
  s.description = %q{Howcast API Ruby Wrapper}
  s.email = ["michael+gem@howcast.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/howcast.rb", "lib/howcast/client.rb", "lib/howcast/version.rb", "lib/howcast/errors.rb", "lib/howcast/client/base.rb", "lib/howcast/client/video.rb", "lib/howcast/client/guide.rb", "lib/howcast/client/search.rb", "log/debug.log", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/howcast/client/base_spec.rb", "spec/howcast/client/guide_spec.rb", "spec/howcast/client/video_spec.rb", "spec/howcast/client/search_spec.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake", "tasks/website.rake", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.rhtml"]
  s.has_rdoc = true
  s.homepage = %q{http://howcast.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{howcast}
  s.rubygems_version = %q{1.1.0}
  s.summary = %q{Howcast API Ruby Wrapper}

  s.add_dependency(%q<hpricot>, [">= 0.6"])
end