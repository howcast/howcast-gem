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
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/2.xml?api_key=myapikey")).and_return(video_xml)
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

  it "should set the embed attribute in the video model response" do
    @hc.video(2).embed.should == %(<object width="425" height="352" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="howcastplayer"><param name="movie" value="http://www.howcast.com/flash/howcast_player.swf?file=233"></param><param name="allowFullScreen" value="true"></param><param name="allowScriptAccess" value="always"></param><embed src="http://www.howcast.com/flash/howcast_player.swf?file=233" type="application/x-shockwave-flash" width="425" height="352" allowFullScreen="true" allowScriptAccess="always" ></embed></object>)
  end
  
  it "should set the title attribute in the video model response" do
    @hc.video(2).title.should == "How To Do a Noble Pose"
  end
  
  it "should set the views attribute in the video model response" do
    @hc.video(2).views.should == "38"
  end
  
  it "should set the badges in the video model response" do
    @hc.video(2).badges.should == "Howcast Studios"
  end
  
  it "should set the easy_steps boolean in the video model response" do
    @hc.video(2).easy_steps?.should be_true
  end
  
  it "should set the rating attribute in the video model response" do
    @hc.video(2).rating.should == "2.0"
  end
  
  it "should set the description attribute in the video model response" do
    @hc.video(2).description.should == "You recognize the Noble Pose as the dreaded \"sit-and-reach\" from your childhood gym class. A sample <a href=\"howcast.com\">link</a>"
  end
  
  it "should set the permalink attribute in the video model response" do
    @hc.video(2).permalink.should == "http://www.howcast.com/videos/233-How-To-Do-a-Noble-Pose"
  end
  
  it "should set the category hierarchy in the video model response" do
    hierarchy = @hc.video(2).category_hierarchy
    hierarchy.size.should == 3
    hierarchy.first.instance_of?(Howcast::Client::Category).should be_true
    hierarchy[0].name.should == "Health & Nutrition"
    hierarchy[1].name.should == "Exercise"
    hierarchy[2].name.should == "Yoga"
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
    markers.size.should == 4
    markers.first.instance_of?(Howcast::Client::Marker).should be_true
    markers[0].type.should == "Step"
    markers[0].textile_text.should == "Sit down on the mat with your legs straight out in front of you."
    markers[1].type.should == "Tip"
    markers[1].textile_text.should == "It's okay to slightly bend at the knees while extending into this pose."
    markers[2].type.should == "Step"
    markers[2].textile_text.should == "To release the pose, inhale, and raise your torso straight up with your arms stretched overhead, then exhale and lower your hands to the floor. Now to conquer kickball..."
    markers[3].type.should == "Fact"
    markers[3].textile_text.should == "Pop nobility Sting recently admitted that he and his wife's claims of yoga-inspired marathons of tantric sex was all a joke, saying, \"I have frantic sex, not tantric sex.\""
  end
  
  it "should set the related videos in the video model response" do
    related = @hc.video(2).related_videos
    related.size.should == 2
    related.first.instance_of?(Howcast::Client::Video).should be_true
    related[0].title.should == "How To Do the Extended Triangle Pose"
    related[0].category_hierarchy.last.name.should == "Yoga"
    related[1].title.should == "How To Do a Seated Spinal Twist Pose"
  end
end

describe Howcast::Client, "videos" do
  before do
    @hc = Howcast::Client.new(:key => "myapikey")
  end
  
  it "should establish a connection with videos/most_recent/howcast_studios.xml by default" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/most_recent/howcast_studios.xml?api_key=myapikey")).and_return(videos_xml)
    @hc.videos
  end
  
  it "should establish a connection with videos/most_recent/howcast_studios/2.xml when :page => 2" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/most_recent/howcast_studios/2.xml?api_key=myapikey")).and_return(videos_xml)
    @hc.videos(:page => 2)
  end
  
  it "should establish a connection with videos/most_viewed/howcast_studios.xml when :sort => most_viewed" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/most_viewed/howcast_studios.xml?api_key=myapikey")).and_return(videos_xml)
    @hc.videos(:sort => "most_viewed")    
  end
  
  it "should establish a connection with videos/most_viewed/directors_program.xml when :sort => most_viewed and :filter => directors_program" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/most_viewed/directors_program.xml?api_key=myapikey")).and_return(videos_xml)
    @hc.videos(:sort => "most_viewed", :filter => "directors_program")    
  end
  
  it "should establish a connection with videos/top_rated/directors_program.xml when :sort => most_viewed and :filter => directors_program" do
    @hc.should_receive(:open).with(equivalent_uri("http://www.howcast.com/videos/top_rated/directors_program.xml?api_key=myapikey")).and_return(videos_xml)
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
