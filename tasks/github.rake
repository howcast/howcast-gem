task :build_for_github => [:manifest, :build_gemspec] do
  p `ruby script/github-test.rb howcast.gemspec`
end
