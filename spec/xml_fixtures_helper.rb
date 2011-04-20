module XmlFixturesHelper
  def invalid_api_key_xml
    @invalid_api_key_xml ||= load_fixture 'invalid.api_key.xml'
  end

  # TODO:
  def blank_video_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <video>
      </video>
    </howcast>
    VID
  end

  # TODO:
  def blank_guides_xml
    <<-GUID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <guides>
      </guides>
    </howcast>
    GUID
  end

  # TODO:
  def blank_videos_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <videos>
      </videos>
    </howcast>
    VID
  end

  def category_xml
    @category_xml ||= load_fixture 'category.1585.xml'
  end
  
  def categories_xml
    @categories_xml ||= load_fixture 'categories.xml'
  end

  def video_xml
    @video_xml ||= load_fixture 'video.233.xml'
  end
  
  def video_generated_xml
    @video_generated_xml ||= load_fixture 'video.233.generated.xml'
  end

  # TODO:
  def videos_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <title>Howcast - Top Favorites Howcast Studios Videos </title>
      <videos>
        <video>
          <rating>94</rating>
          <title>How To Pretend You&#8217;re a Real New Yorker</title>
          <permalink>http://www.howcast.com/videos/1101-How-To-Pretend-Youre-a-Real-New-Yorker</permalink>
          <id>1101</id>
          <category-id>1642</category-id>
          <description>There&#8217;s nothing wrong with being a tourist in New York City. But if you want to blend in, here&#8217;s what you need to know.</description>
          <thumbnail-url>http://www.howcast.com/system/thumbnails/1101/ppn_feller_real_newyorker_sd_medium.jpg</thumbnail-url>
          <views>2739</views>
          <username>vinzfeller</username>
          <duration>203</duration>
          <created-at>2008-02-05T19:41:21-08:00</created-at>
        </video>
        <video>
          <rating>96</rating>
          <title>How To Look Great in Photographs</title>
          <permalink>http://www.howcast.com/videos/577-How-To-Look-Great-in-Photographs</permalink>
          <id>577</id>
          <category-id>22</category-id>
          <description>Sure, a beautiful photograph takes some skill behind the lens, but it takes a little skill in front of it, too.</description>
          <thumbnail-url>http://www.howcast.com/system/thumbnails/577/Arts.How_to_Look_Great_in_Photographs_SD_medium.jpg</thumbnail-url>
          <views>3831</views>
          <username>nicholas</username>
          <duration>156</duration>
          <created-at>2008-01-12T09:33:06-08:00</created-at>
        </video>
        <video>
          <rating>98</rating>
          <title>How To Make a Water Gun Alarm Clock</title>
          <permalink>http://www.howcast.com/videos/866-How-To-Make-a-Water-Gun-Alarm-Clock</permalink>
          <id>866</id>
          <category-id>1728</category-id>
          <description>Having a little trouble waking up in the morning? There&#8217;s nothing like a good soaking to get you going.</description>
          <thumbnail-url>http://www.howcast.com/system/thumbnails/866/watergunthumb2_medium.jpg</thumbnail-url>
          <views>2663</views>
          <username>Howcast</username>
          <duration>108</duration>
          <created-at>2008-01-31T20:47:08-08:00</created-at>
        </video>
      </videos>
    </howcast>
    VID
  end
  
  def user_videos_xml
    @user_videos_xml ||= load_fixture 'users.someone.profile.videos.xml'
  end
  
  def homepage_videos_xml
    @homepage_videos_xml ||= load_fixture 'homepage.staff_videos.xml'
  end
  
  def playlist_xml
    @playlist_xml ||= load_fixture 'playlist.4566.xml'
  end
  
  # TODO:
  def homepage_playlists_xml
    <<-PLAYLISTS
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <title>Howcast - Staff Picks</title>
      <playlists>
        <playlist>
          <id>286</id>
          <title>Pranks For the Memories</title>
          <views>4260</views>
          <created-at>Tue, 06 May 2008 13:13:15 -0700</created-at>
          <videos-count>15</videos-count>
          <rating>1</rating>
          <permalink>http://www.howcast.com/playlists/286-Pull-Pranks-and-Fake-Out-Your-Friends</permalink>
          <thumbnail-url>http://img.howcast.com/thumbnails/2721/ppn_milkhouse_buried_cubicle_prank_sd_medium.jpg</thumbnail-url>
        </playlist>
        <playlist>
          <id>94</id>
          <title>Happy Easter!</title>
          <views>1776</views>
          <created-at>Tue, 18 Mar 2008 14:18:38 -0700</created-at>
          <videos-count>8</videos-count>
          <rating>6</rating>
          <permalink>http://www.howcast.com/playlists/94-Easter-Eggstravaganza</permalink>
          <thumbnail-url>http://img.howcast.com/thumbnails/2567/ppn_zeug_easter_eggs_sd_medium.jpg</thumbnail-url>
        </playlist>
      </playlists>
    </howcast>
    PLAYLISTS
  end

  def load_fixture fixture
    File.read File.expand_path(File.join(File.dirname(__FILE__), "../fixtures/#{fixture}"))
  end
end
