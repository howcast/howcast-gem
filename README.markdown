# Howcast API Ruby Wrapper

Copyright (c) 2008 Howcast Media Inc.

Author: Jingshen Jimmy Zhang <jimmy@howcast.com>

## Installing
	
    sudo gem install howcast-howcast
  
## Example

    require 'rubygems'
    require 'howcast'

    hc = Howcast::Client.new(:key => "INSERT API KEY HERE")
    # Will print out the video titles of the first page of recent howcast studios videos
    puts "Recent Howcast Studios Videos"
    hc.videos.each do |v|
      puts v.title
    end

    puts "2nd Page of Top Rated Videos"
    # Will print out the video titles of the 2nd page of top rated videos
    hc.videos(:page => 2, :sort => "top_rated", :filter => "all").each do |v|
      puts v.title
    end

    puts "Videos matching 'origami'"
    hc.search("origami").each do |v|
      puts v.title
    end

    puts "Video with id 946"
    puts hc.video(946).title
  
    # Category API
    piano = hc.category(1105)
    puts "The parent category of Piano is #{hc.category(piano.parent_id).name}"
  
    ancestors = piano.parents.map{|c| c[:name]}
    # Ancestors will be an array of hash metadata: 
    # => [{:name=>"Performing Arts", :id=>"1048"}, 
    #     {:name=>"Musical Instruments", :id=>"1095"}, 
    #     {:name=>"Keyboards", :id=>"1103"}]
    puts "The ancestors of piano are: #{ancestors.join(" -> ")}"