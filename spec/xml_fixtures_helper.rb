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
        <category-hierarchy>
          <category id="479">Health &amp; Nutrition</category>
          <category parent_id="479" id="510">Exercise</category>
          <category parent_id="510" id="515">Yoga</category>
        </category-hierarchy>
        <easy-steps>true</easy-steps>
        <badges>Howcast Studios</badges>
        <title>How To Do a Noble Pose</title>
        <filename>/system/videos/2/33/02/233.flv</filename>
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
        <ingredients>
          <ingredient>
            <![CDATA[Comfortable clothing suitable for stretching and moving]]>
          </ingredient>
          <ingredient>
            <![CDATA[A calm place where you won't be distracted or disturbed]]>
          </ingredient>
          <ingredient>
            <![CDATA[A yoga mat or folded blanket]]>
          </ingredient>
          <ingredient>
            <![CDATA[A belt or strap]]>
          </ingredient>
        </ingredients>
        <markers>
          <marker>
            <id>3716</id>
            <position>1</position>
            <timemarker>32</timemarker>
            <type>Step</type>
            <thumbnail-url>http://img.howcast.com/system/thumbnails/233/32.jpg</thumbnail-url>
            <title>Sit down on mat</title>
            <textile-text>
              <![CDATA[Sit down on the mat with your legs straight out in front of you.]]>
            </textile-text>
            <text>
              <![CDATA[<p>Sit down on the mat with your legs straight out in front of you.</p>]]>
            </text>
          </marker>
          <marker>
            <id>3719</id>
            <position>4</position>
            <timemarker>48</timemarker>
            <type>Tip</type>
            <thumbnail-url></thumbnail-url>
            <title></title>
            <textile-text>
              <![CDATA[It's okay to slightly bend at the knees while extending into this pose.]]>
            </textile-text>
            <text>
              <![CDATA[<p>It&#8217;s okay to slightly bend at the knees while extending into this pose.</p>]]>
            </text>
          </marker>
          <marker>
            <id>3723</id>
            <position>8</position>
            <timemarker>70</timemarker>
            <type>Step</type>
            <thumbnail-url>http://img.howcast.com/system/thumbnails/233/70.jpg</thumbnail-url>
            <title>Release pose</title>
            <textile-text>
              <![CDATA[To release the pose, inhale, and raise your torso straight up with your arms stretched overhead, then exhale and lower your hands to the floor. Now to conquer kickball...]]>
            </textile-text>
            <text>
              <![CDATA[<p>To release the pose, inhale, and raise your torso straight up with your arms stretched overhead, then exhale and lower your hands to the floor. Now to conquer kickball&#8230;</p>]]>
            </text>
          </marker>
          <marker>
            <id>3724</id>
            <position>9</position>
            <timemarker>81</timemarker>
            <type>Fact</type>
            <thumbnail-url></thumbnail-url>
            <title></title>
            <textile-text>
              <![CDATA[Pop nobility Sting recently admitted that he and his wife's claims of yoga-inspired marathons of tantric sex was all a joke, saying, "I have frantic sex, not tantric sex."]]>
            </textile-text>
            <text>
              <![CDATA[<p>Pop nobility Sting recently admitted that he and his wife&#8217;s claims of yoga-inspired marathons of tantric sex was all a joke, saying, &#8220;I have frantic sex, not tantric sex.&#8221;</p>]]>
            </text>
          </marker>
        </markers>
        <related-videos>
          <video>
            <category-id>515</category-id>
            <id>224</id>
            <title>How To Do the Extended Triangle Pose</title>
            <views>2470</views>
            <type>HowcastGuide</type>
            <created-at>Wed, 05 Dec 2007 20:07:04 -0800</created-at>
            <rating>6</rating>
            <username>joekulak</username>
            <description>
              <![CDATA[What do paintings on a wall, car tires, and promising horoscopes have in common? They all require proper alignment. It's not the easiest skill to acquire, but the Extended Triangle Pose will help hone it.]]>
            </description>
            <embed>
              <![CDATA[<object width="425" height="352" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="howcastplayer"><param name="movie" value="http://www.howcast.com/flash/howcast_player.swf?file=224"></param><param name="allowFullScreen" value="true"></param><param name="allowScriptAccess" value="always"></param><embed src="http://www.howcast.com/flash/howcast_player.swf?file=224" type="application/x-shockwave-flash" width="425" height="352" allowFullScreen="true" allowScriptAccess="always" ></embed></object>]]>
            </embed>
            <duration>146</duration>
            <filename>http://media.howcast.com/system/videos/0/24/02/224.flv</filename>
            <tags>DIY, Instructional, tutorial, Do It Yourself, Tips, Essential Skills, Learn to, yoga, pose, position, body, exercise, stretch, meditation, extended, triangle, utthita, trikonasana, warrior</tags>
            <category-hierarchy>
              <category id="479">Health &amp; Nutrition</category>
              <category parent_id="479" id="510">Exercise</category>
              <category parent_id="510" id="515">Yoga</category>
            </category-hierarchy>
            <comment-count>0</comment-count>
            <thumbnail-url>http://img.howcast.com/system/thumbnails/224/Mind.How_to_Do_the_Extended_Triangle_Pose_SD_xxlarge_maintained_aspect.jpg</thumbnail-url>
            <permalink>http://www.howcast.com/videos/224-How-To-Do-the-Extended-Triangle-Pose</permalink>
            <content_rating>nonadult</content_rating>
          </video>
          <video>
            <category-id>515</category-id>
            <id>225</id>
            <title>How To Do a Seated Spinal Twist Pose</title>
            <views>3461</views>
            <type>HowcastGuide</type>
            <created-at>Wed, 05 Dec 2007 20:07:08 -0800</created-at>
            <rating>8</rating>
            <username>joekulak</username>
            <description>
              <![CDATA[According to Hindu mythology, this pose was originated by a yogi who spent 12 years in the belly of a fish, eavesdropping on Shiva's secret yoga instructions in an ocean cave.  All you have to do is sit on a mat.]]>
            </description>
            <embed>
              <![CDATA[<object width="425" height="352" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="howcastplayer"><param name="movie" value="http://www.howcast.com/flash/howcast_player.swf?file=225"></param><param name="allowFullScreen" value="true"></param><param name="allowScriptAccess" value="always"></param><embed src="http://www.howcast.com/flash/howcast_player.swf?file=225" type="application/x-shockwave-flash" width="425" height="352" allowFullScreen="true" allowScriptAccess="always" ></embed></object>]]>
            </embed>
            <duration>143</duration>
            <filename>http://media.howcast.com/system/videos/1/25/02/225.flv</filename>
            <tags>DIY, Instructional, tutorial, Do It Yourself, Tips, Essential Skills, Learn to, yoga, pose, position, body, exercise, stretch, meditation, seated, spinal, twist, Ardha, Matsyendrasana</tags>
            <category-hierarchy>
              <category id="479">Health &amp; Nutrition</category>
              <category parent_id="479" id="510">Exercise</category>
              <category parent_id="510" id="515">Yoga</category>
            </category-hierarchy>
            <comment-count>0</comment-count>
            <thumbnail-url>http://img.howcast.com/system/thumbnails/225/Mind.How_to_Do_a_Seated_Spinal_Twist_Pose_SD_xxlarge_maintained_aspect.jpg</thumbnail-url>
            <permalink>http://www.howcast.com/videos/225-How-To-Do-a-Seated-Spinal-Twist-Pose</permalink>
            <content_rating>nonadult</content_rating>
          </video>
        </related-videos>
      </video>
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
