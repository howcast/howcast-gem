require File.dirname(__FILE__) + '/../../spec_helper'

describe Howcast::Client::Video, "initialize" do
  it "should create a video object with all the inputted attributes" do
    video = Howcast::Client::Video.new :title => "video_title"
    video.title.should == 'video_title'
  end
  
  it "should ignore inputs which are not video attributes" do
    video = Howcast::Client::Video.new :not_an_attribute => "value", :title => "video_title"
    video.respond_to?(:not_an_attribute).should be_false
    video.title.should == "video_title"
  end
end

describe Howcast::Client, "video" do  
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(video_xml)
  end
  
  it "should establish a connection with the correct video url" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/2.xml?api_key=myapikey").and_return(video_xml)
    @hc.video(2)
  end  
  
  it "should raise Howcast::ApiKeyNotFound error when the response contains Invalid API Key" do
    lambda {
      @hc.stub!(:open).and_return(invalid_api_key_xml)
      @hc.video(2)
    }.should raise_error(Howcast::ApiKeyNotFound)
  end

  it "should return nil whenever the result xml is empty" do
    @hc.stub!(:open).and_return(blank_video_xml)
    @hc.video(2).should be_nil
  end

  it "should set the mature-content flag in the video model response" do
    @hc.video(2).mature_content?.should == true
  end

  it "should set the ads-allowed flag in the video model response" do
    @hc.video(2).ads_allowed?.should == true
  end

  it "should set the type attribute in the video model response" do
    type = @hc.video(2).type
    type.instance_of?(Howcast::Client::Type).should be_true
    type.kind.should == "HowcastOriginalGuide"
    type.status.should == "proprietary"
    type.name.should == "HowcastGuide"
  end

  it "should set the playlist-memberships attribute in the video model response" do
    memberships = @hc.video(2).playlist_memberships
    memberships.size.should == 9
    memberships.first.instance_of?(Howcast::Client::Playlist).should be_true
    memberships.each do |membership|
      membership.id.should_not be_empty
      membership.title.should_not be_empty
    end
  end
  
  it "should set the embed attribute in the video model response" do
    @hc.video(2).embed.should == %(<object width="425" height="352" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="howcastplayer"><param name="movie" value="http://www.howcast.com/flash/howcast_player.swf?file=233"></param><param name="allowFullScreen" value="true"></param><param name="allowScriptAccess" value="always"></param><embed src="http://www.howcast.com/flash/howcast_player.swf?file=233" type="application/x-shockwave-flash" width="425" height="352" allowFullScreen="true" allowScriptAccess="always" ></embed></object>)
  end
  
  it "should set the title attribute in the video model response" do
    @hc.video(2).title.should == "How To Do a Noble Pose"
  end
  
  it "should set the views attribute in the video model response" do
    @hc.video(2).views.should_not be_empty
  end
  
  it "should set the badges in the video model response" do
    @hc.video(2).badges.should == "Howcast Studios"
  end
  
  it "should set the easy_steps boolean in the video model response" do
    @hc.video(2).easy_steps?.should be_true
  end
  
  it "should set the rating attribute in the video model response" do
    @hc.video(2).rating.should_not be_empty
  end
  
  it "should set the description attribute in the video model response" do
    @hc.video(2).description.should_not be_empty
  end
  
  it "should set the permalink attribute in the video model response" do
    @hc.video(2).permalink.should == "http://www.howcast.com/videos/233-How-To-Do-a-Noble-Pose"
  end
  
  it "should set the filename attribute in the video model response" do
    @hc.video(2).filename.should == "/system/videos/2/33/02/233.flv"
  end
  
  it "should set the category hierarchy in the video model response" do
    hierarchy = @hc.video(2).category_hierarchy
    hierarchy.size.should == 3
    hierarchy.first.instance_of?(Howcast::Client::Category).should be_true
    hierarchy[0].name.should == "Health & Nutrition"
    hierarchy[1].name.should == "Exercise"
    hierarchy[2].name.should == "Yoga"
    hierarchy[0].parent_id.should be_nil
    hierarchy[1].parent_id.should_not be_nil
    hierarchy[2].parent_id.should_not be_nil
    hierarchy[0].id.should_not be_nil
    hierarchy[1].id.should_not be_nil
    hierarchy[2].id.should_not be_nil
    hierarchy[0].permalink.should match(/http/)
    hierarchy[1].permalink.should match(/http/)
    hierarchy[2].permalink.should match(/http/)
  end
  
  it "should set the ingredients in the video model response" do
    ingredients = @hc.video(2).ingredients
    ingredients.size.should == 4
    ingredients[0].should == "Comfortable clothing suitable for stretching and moving"
    ingredients[1].should == "A calm place where you won't be distracted or disturbed"
    ingredients[2].should == "A yoga mat or folded blanket"
    ingredients[3].should == "A belt or strap"
  end
  
  it "should set the markers in the video model response" do
    markers = @hc.video(2).markers
    markers.size.should == 9
    markers.first.instance_of?(Howcast::Client::Marker).should be_true
    markers.each do |marker|
      marker.textile_text.should_not be_empty
      marker.type.should =~ /^(Fact|Step|Tip)$/
    end
  end
  
  it "should set the related videos in the video model response" do
    related = @hc.video(2).related_videos
    related.size.should == 15
    related.first.instance_of?(Howcast::Client::Video).should be_true
    related.each do |video|
      video.title.should_not be_empty
      video.category_hierarchy.should_not be_empty
    end
  end
end

describe Howcast::Client, "videos" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with videos/most_recent/howcast_studios.xml by default" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/most_recent/howcast_studios.xml?api_key=myapikey").and_return(videos_xml)
    @hc.videos
  end
  
  it "should establish a connection with videos/most_recent/howcast_studios/2.xml when :page => 2" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/most_recent/howcast_studios/2.xml?api_key=myapikey").and_return(videos_xml)
    @hc.videos(:page => 2)
  end
  
  it "should establish a connection with videos/most_viewed/howcast_studios.xml when :sort => most_viewed" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/most_viewed/howcast_studios.xml?api_key=myapikey").and_return(videos_xml)
    @hc.videos(:sort => "most_viewed")    
  end
  
  it "should establish a connection with videos/most_viewed/directors_program.xml when :sort => most_viewed and :filter => directors_program" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/most_viewed/directors_program.xml?api_key=myapikey").and_return(videos_xml)
    @hc.videos(:sort => "most_viewed", :filter => "directors_program")    
  end
  
  it "should establish a connection with videos/top_rated/directors_program.xml when :sort => most_viewed and :filter => directors_program" do
    @hc.should_receive(:open).with(URI.parse "http://www.howcast.com/videos/top_rated/directors_program.xml?api_key=myapikey").and_return(videos_xml)
    @hc.videos(:sort => "top_rated", :filter => "directors_program")    
  end
  
  it "should raise a Howcast::ApiNotFound if url is invalid" do
    lambda {
      @hc.should_receive(:open).and_raise(URI::InvalidURIError)
      @hc.videos
    }.should raise_error(Howcast::ApiNotFound)
  end
  
  it "should return an empty array if there are no results" do
    @hc.should_receive(:open).and_return(blank_videos_xml)
    @hc.videos.should be_empty
  end
  
  it "should return an array of video objects if there are some returned" do
    @hc.should_receive(:open).and_return(videos_xml)
    videos = @hc.videos
    videos.size.should == 3
    videos.first.permalink.should == "http://www.howcast.com/videos/1101-How-To-Pretend-Youre-a-Real-New-Yorker"
    videos.last.permalink.should == "http://www.howcast.com/videos/866-How-To-Make-a-Water-Gun-Alarm-Clock"
  end
end

describe Howcast::Client, "XML features" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
    @hc.stub!(:open).and_return(video_xml)
  end
  
  it "should have a to_doc method" do
    @hc.video(2).should respond_to :to_doc
  end

  it "should have a to_doc method" do
    @hc.video(2).should respond_to :to_xml
  end

  it "should return an xml document" do
    doc = @hc.video(2).to_doc
    doc.should be_an_instance_of Nokogiri::XML::Document
  end

  it "should map attributes to the xml document" do
    video = @hc.video(2)
    doc   = video.to_doc
    doc.xpath("/video/id").text.should == video.id
    doc.xpath("/video/title").text.should == video.title
    doc.xpath("/video/permalink").text.should == video.permalink
    doc.xpath("/video/thumbnail_url").text.should == video.thumbnail_url
    doc.xpath("/video/category_id").text.should == video.category_id
    doc.xpath("/video/views").text.should == video.views
    doc.xpath("/video/username").text.should == video.username
    doc.xpath("/video/duration").text.should == video.duration
    doc.xpath("/video/created_at").text.should == video.created_at
    doc.xpath("/video/rating").text.should == video.rating
    doc.xpath("/video/description").text.should == video.description
    doc.xpath("/video/width").text.should == video.width
    doc.xpath("/video/height").text.should == video.height
    doc.xpath("/video/badges").text.should == video.badges
    doc.xpath("/video/easy_steps").text.should == video.easy_steps.to_s
    doc.xpath("/video/embed/object").to_xml.should == Nokogiri::XML(video.embed).root.to_xml
    doc.xpath("/video/category_hierarchy/category").length.should == video.category_hierarchy.length
    doc.xpath("/video/ingredients/ingredient").length.should == video.ingredients.length
    doc.xpath("/video/markers/marker").length.should == video.markers.length
    doc.xpath("/video/related_videos/video").length.should == video.related_videos.length
    doc.xpath("/video/filename").text.should == video.filename
    doc.xpath("/video/mature_content").text.should == video.mature_content?.to_s
    doc.xpath("/video/ads_allowed").text.should == video.ads_allowed?.to_s
    doc.xpath("/video/playlist_memberships/playlist").length.should == video.playlist_memberships.length
    doc.xpath("/video/type/name").text.should == video.type.name
    doc.xpath("/video/type/kind").text.should == video.type.kind
    doc.xpath("/video/type/status").text.should == video.type.status
  end
end
