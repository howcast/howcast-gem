module XmlFixturesHelper
  def invalid_api_key_xml
    <<-INVALID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <error>Invalid API Key</error>
    </howcast>
    INVALID
  end

  def blank_video_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <video>
      </video>
    </howcast>
    VID
  end

  def blank_guides_xml
    <<-GUID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <guides>
      </guides>
    </howcast>
    GUID
  end

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
    <<-CAT
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <category>
        <id>1255</id>
        <name>General African Travel</name>
        <parent-id>1584</parent-id>
        <parents>
          <category id="1571">Travel</category>
          <category parent_id="1571" id="1584">African Travel</category>
        </parents>
        <subcategories>
          <category>
            <id>1265</id>
            <name>African Travel</name>
          </category>
          <category>
            <id>1289</id>
            <name>European Travel</name>
          </category>
          <category>
            <id>1256</id>
            <name>General Travel</name>
          </category>
          <category>
            <id>1311</id>
            <name>General U.S. Travel</name>
          </category>
        </subcategories>
      </category>
    </howcast>
    CAT
  end

  def video_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <video>
        <category-id>2</category-id>
        <duration>22</duration>
        <id>233</id>
        <easy-steps>true</easy-steps>
        <badges>Howcast Studios</badges>
        <title>How To Do a Noble Pose</title>
        <embed>
          <![CDATA[<object width="425" height="352" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="howcastplayer"><param name="movie" value="http://www.howcast.com/flash/howcast_player.swf?file=233"></param><param name="allowFullScreen" value="true"></param><param name="allowScriptAccess" value="always"></param><embed src="http://www.howcast.com/flash/howcast_player.swf?file=233" type="application/x-shockwave-flash" width="425" height="352" allowFullScreen="true" allowScriptAccess="always" ></embed></object>]]>
        </embed>
        <description>
          <![CDATA[You recognize the Noble Pose as the dreaded "sit-and-reach" from your childhood gym class. A sample <a href="howcast.com">link</a>]]>
        </description>
        <permalink>http://www.howcast.com/videos/233-How-To-Do-a-Noble-Pose</permalink>
        <username>joekulak</username>
        <thumbnail-url>http://www.howcast.com/system/thumbnails/233/Mind.How_to_Do_the_Noble_Pose_SD_xxlarge.jpg</thumbnail-url>
        <views>38</views>
        <rating>2.0</rating>
        <created-at>#{Time.now.rfc822}</created-at>
      </video>
    </howcast>
    VID
  end

  def guides_xml
    <<-VID
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <title>Howcast - Top Favorites Howcast Written Guides </title>
      <guides>
        <guide>
          <rating>94</rating>
          <title>How To Pretend You&#8217;re a Real New Yorker</title>
          <permalink>http://www.howcast.com/guides/1101-How-To-Pretend-Youre-a-Real-New-Yorker</permalink>
          <id>1101</id>
          <category-id>1642</category-id>
          <description>There&#8217;s nothing wrong with being a tourist in New York City. But if you want to blend in, here&#8217;s what you need to know.</description>
          <views>2739</views>
          <username>vinzfeller</username>
          <created-at>2008-02-05T19:41:21-08:00</created-at>
        </guide>
        <guide>
          <rating>96</rating>
          <title>How To Look Great in Photographs</title>
          <permalink>http://www.howcast.com/guides/577-How-To-Look-Great-in-Photographs</permalink>
          <id>577</id>
          <category-id>22</category-id>
          <description>Sure, a beautiful photograph takes some skill behind the lens, but it takes a little skill in front of it, too.</description>
          <views>3831</views>
          <username>nicholas</username>
          <created-at>2008-01-12T09:33:06-08:00</created-at>
        </guide>
        <guide>
          <rating>98</rating>
          <title>How To Make a Water Gun Alarm Clock</title>
          <permalink>http://www.howcast.com/guides/866-How-To-Make-a-Water-Gun-Alarm-Clock</permalink>
          <id>866</id>
          <category-id>1728</category-id>
          <description>Having a little trouble waking up in the morning? There&#8217;s nothing like a good soaking to get you going.</description>
          <views>2663</views>
          <username>Howcast</username>
          <created-at>2008-01-31T20:47:08-08:00</created-at>
        </guide>
      </guides>
    </howcast>
    VID
  end

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
end
