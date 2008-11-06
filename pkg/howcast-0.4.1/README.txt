Howcast API Ruby Wrapper
Copyright (c) 2008 Howcast Media Inc.

== Example

An example ruby script to get some howcast videos

  require 'rubygems'
  require 'howcast'

  hc = Howcast::Client.new(:key => "INSERT API KEY HERE")
  # Will print out the video titles of the first page of recent howcast studios videos
  puts "Recent Howcast Studios Videos"
  hc.videos.each do |v|
    puts v.title
  end

  puts "2nd Page of Recent Featured Videos"
  # Will print out the video titles of the 2nd page of recent featured videos
  hc.videos(:page => 2, :sort => "most_recent", :filter => "featured").each do |v|
    puts v.title
  end

  puts "Videos matching 'origami'"
  hc.video_search("origami").each do |v|
    puts v.title
  end

  puts "Video with id 946"
  puts hc.video(946).title