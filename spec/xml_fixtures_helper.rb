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
        <id>1585</id>
        <name>General African Travel</name>
        <parent-id>1584</parent-id>
        <permalink>http://www.howcast.com/categories/1585-General-African-Travel</permalink>
        <parents>
          <category>
            <id>1571</id>
            <name>Travel</name>
            <permalink>http://www.howcast.com/categories/1571-Travel</permalink>
          </category>
          <category>
            <id>1584</id>
            <name>African Travel</name>
            <parent-id>1571</parent-id>
            <permalink>http://www.howcast.com/categories/1584-African-Travel</permalink>
          </category>
        </parents>
        <subcategories>
        </subcategories>
      </category>
    </howcast>
    CAT
  end
  
  def categories_xml
    <<-CAT
    <?xml version="1.0" encoding="UTF-8"?>
    <howcast version="0.1">
      <title>Howcast - Categories</title>
      <categories>
        <category>
          <id>1</id>
          <name>Arts &amp; Media</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1-Arts-and-Media</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>6</id>
              <name>Animation Techniques</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/6-Animation-Techniques</permalink>
            </category>
            <category>
              <id>16</id>
              <name>Art Techniques</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/16-Art-Techniques</permalink>
            </category>
            <category>
              <id>1060</id>
              <name>Books &amp; Reading</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/1060-Books-and-Reading</permalink>
            </category>
            <category>
              <id>2</id>
              <name>Cartooning &amp; Manga Techniques</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/2-Cartooning-and-Manga-Techniques</permalink>
            </category>
            <category>
              <id>9</id>
              <name>Film, Video &amp; Television</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/9-Film-Video-and-Television</permalink>
            </category>
            <category>
              <id>1073</id>
              <name>Fine Art</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/1073-Fine-Art</permalink>
            </category>
            <category>
              <id>1081</id>
              <name>Museums</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/1081-Museums</permalink>
            </category>
            <category>
              <id>21</id>
              <name>Photography Techniques</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/21-Photography-Techniques</permalink>
            </category>
            <category>
              <id>1054</id>
              <name>Radio</name>
              <parent-id>1</parent-id>
              <permalink>http://www.howcast.com/categories/1054-Radio</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>30</id>
          <name>Business &amp; Finance</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/30-Business-and-Finance</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>31</id>
              <name>Advertising &amp; Marketing</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/31-Advertising-and-Marketing</permalink>
            </category>
            <category>
              <id>71</id>
              <name>Buying &amp; Selling a Home</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/71-Buying-and-Selling-a-Home</permalink>
            </category>
            <category>
              <id>32</id>
              <name>Insurance</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/32-Insurance</permalink>
            </category>
            <category>
              <id>66</id>
              <name>Investing</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/66-Investing</permalink>
            </category>
            <category>
              <id>37</id>
              <name>Management &amp; Business Skills</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/37-Management-and-Business-Skills</permalink>
            </category>
            <category>
              <id>59</id>
              <name>Office Life</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/59-Office-Life</permalink>
            </category>
            <category>
              <id>47</id>
              <name>Personal Finance</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/47-Personal-Finance</permalink>
            </category>
            <category>
              <id>91</id>
              <name>Self Employment</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/91-Self-Employment</permalink>
            </category>
            <category>
              <id>82</id>
              <name>Small Business</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/82-Small-Business</permalink>
            </category>
            <category>
              <id>77</id>
              <name>Taxes</name>
              <parent-id>30</parent-id>
              <permalink>http://www.howcast.com/categories/77-Taxes</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>95</id>
          <name>Careers &amp; Education</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/95-Careers-and-Education</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>97</id>
              <name>Arts Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/97-Arts-Careers</permalink>
            </category>
            <category>
              <id>98</id>
              <name>Business &amp; Financial Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/98-Business-and-Financial-Careers</permalink>
            </category>
            <category>
              <id>175</id>
              <name>College Admissions</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/175-College-Admissions</permalink>
            </category>
            <category>
              <id>171</id>
              <name>College Guides</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/171-College-Guides</permalink>
            </category>
            <category>
              <id>176</id>
              <name>College Life</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/176-College-Life</permalink>
            </category>
            <category>
              <id>182</id>
              <name>College Scholarships &amp; Financial Aid</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/182-College-Scholarships-and-Financial-Aid</permalink>
            </category>
            <category>
              <id>107</id>
              <name>Computer &amp; Internet Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/107-Computer-and-Internet-Careers</permalink>
            </category>
            <category>
              <id>108</id>
              <name>Education Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/108-Education-Careers</permalink>
            </category>
            <category>
              <id>96</id>
              <name>General Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/96-General-Careers</permalink>
            </category>
            <category>
              <id>109</id>
              <name>Government Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/109-Government-Careers</permalink>
            </category>
            <category>
              <id>154</id>
              <name>Job Hunting</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/154-Job-Hunting</permalink>
            </category>
            <category>
              <id>113</id>
              <name>Legal Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/113-Legal-Careers</permalink>
            </category>
            <category>
              <id>114</id>
              <name>Mechanical &amp; Engineering Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/114-Mechanical-and-Engineering-Careers</permalink>
            </category>
            <category>
              <id>117</id>
              <name>Media &amp; Publishing Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/117-Media-and-Publishing-Careers</permalink>
            </category>
            <category>
              <id>125</id>
              <name>Medicine &amp; Health Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/125-Medicine-and-Health-Careers</permalink>
            </category>
            <category>
              <id>132</id>
              <name>Military &amp; Law Enforcement Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/132-Military-and-Law-Enforcement-Careers</permalink>
            </category>
            <category>
              <id>163</id>
              <name>Office Life</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/163-Office-Life</permalink>
            </category>
            <category>
              <id>136</id>
              <name>Performing Arts Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/136-Performing-Arts-Careers</permalink>
            </category>
            <category>
              <id>143</id>
              <name>Recreation &amp; Hospitality Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/143-Recreation-and-Hospitality-Careers</permalink>
            </category>
            <category>
              <id>149</id>
              <name>Retail Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/149-Retail-Careers</permalink>
            </category>
            <category>
              <id>170</id>
              <name>Retirement</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/170-Retirement</permalink>
            </category>
            <category>
              <id>150</id>
              <name>Science Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/150-Science-Careers</permalink>
            </category>
            <category>
              <id>186</id>
              <name>Test Preparation</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/186-Test-Preparation</permalink>
            </category>
            <category>
              <id>151</id>
              <name>Travel &amp; Transportation Careers</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/151-Travel-and-Transportation-Careers</permalink>
            </category>
            <category>
              <id>152</id>
              <name>Working With Animals &amp; Nature</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/152-Working-With-Animals-and-Nature</permalink>
            </category>
            <category>
              <id>153</id>
              <name>Working With Children</name>
              <parent-id>95</parent-id>
              <permalink>http://www.howcast.com/categories/153-Working-With-Children</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>193</id>
          <name>Cars &amp; Transportation</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/193-Cars-and-Transportation</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>195</id>
              <name>Aircraft</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/195-Aircraft</permalink>
            </category>
            <category>
              <id>200</id>
              <name>Boats &amp; Boating</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/200-Boats-and-Boating</permalink>
            </category>
            <category>
              <id>207</id>
              <name>Buying &amp; Selling a Car</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/207-Buying-and-Selling-a-Car</permalink>
            </category>
            <category>
              <id>213</id>
              <name>Car Customizing</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/213-Car-Customizing</permalink>
            </category>
            <category>
              <id>214</id>
              <name>Car Maintenance &amp; Repair</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/214-Car-Maintenance-and-Repair</permalink>
            </category>
            <category>
              <id>219</id>
              <name>Car Safety</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/219-Car-Safety</permalink>
            </category>
            <category>
              <id>1708</id>
              <name>Commuting</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/1708-Commuting</permalink>
            </category>
            <category>
              <id>225</id>
              <name>Driving</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/225-Driving</permalink>
            </category>
            <category>
              <id>194</id>
              <name>General Transportation</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/194-General-Transportation</permalink>
            </category>
            <category>
              <id>231</id>
              <name>Motorcycles</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/231-Motorcycles</permalink>
            </category>
            <category>
              <id>235</id>
              <name>Other Automobiles</name>
              <parent-id>193</parent-id>
              <permalink>http://www.howcast.com/categories/235-Other-Automobiles</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>240</id>
          <name>Crafts &amp; Hobbies</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/240-Crafts-and-Hobbies</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>245</id>
              <name>Antiques &amp; Collectibles</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/245-Antiques-and-Collectibles</permalink>
            </category>
            <category>
              <id>257</id>
              <name>Decorative Arts</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/257-Decorative-Arts</permalink>
            </category>
            <category>
              <id>261</id>
              <name>Flowers &amp; Nature Crafts</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/261-Flowers-and-Nature-Crafts</permalink>
            </category>
            <category>
              <id>241</id>
              <name>General Crafts &amp; Hobbies</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/241-General-Crafts-and-Hobbies</permalink>
            </category>
            <category>
              <id>268</id>
              <name>Holiday &amp; Seasonal Crafts</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/268-Holiday-and-Seasonal-Crafts</permalink>
            </category>
            <category>
              <id>264</id>
              <name>Jewelry</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/264-Jewelry</permalink>
            </category>
            <category>
              <id>275</id>
              <name>Needlework</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/275-Needlework</permalink>
            </category>
            <category>
              <id>283</id>
              <name>Paper Crafts</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/283-Paper-Crafts</permalink>
            </category>
            <category>
              <id>288</id>
              <name>Pottery</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/288-Pottery</permalink>
            </category>
            <category>
              <id>293</id>
              <name>Toys, Dolls &amp; Modelmaking</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/293-Toys-Dolls-and-Modelmaking</permalink>
            </category>
            <category>
              <id>297</id>
              <name>Woodwork</name>
              <parent-id>240</parent-id>
              <permalink>http://www.howcast.com/categories/297-Woodwork</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>304</id>
          <name>Environment</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/304-Environment</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>306</id>
              <name>Animal Protection</name>
              <parent-id>304</parent-id>
              <permalink>http://www.howcast.com/categories/306-Animal-Protection</permalink>
            </category>
            <category>
              <id>307</id>
              <name>Environmental Protection</name>
              <parent-id>304</parent-id>
              <permalink>http://www.howcast.com/categories/307-Environmental-Protection</permalink>
            </category>
            <category>
              <id>305</id>
              <name>General Environment &amp; Ecology</name>
              <parent-id>304</parent-id>
              <permalink>http://www.howcast.com/categories/305-General-Environment-and-Ecology</permalink>
            </category>
            <category>
              <id>308</id>
              <name>Green Living</name>
              <parent-id>304</parent-id>
              <permalink>http://www.howcast.com/categories/308-Green-Living</permalink>
            </category>
            <category>
              <id>316</id>
              <name>Recycling</name>
              <parent-id>304</parent-id>
              <permalink>http://www.howcast.com/categories/316-Recycling</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>326</id>
          <name>First Aid &amp; Safety</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/326-First-Aid-and-Safety</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>328</id>
              <name>Blackouts</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/328-Blackouts</permalink>
            </category>
            <category>
              <id>329</id>
              <name>Car Accidents</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/329-Car-Accidents</permalink>
            </category>
            <category>
              <id>330</id>
              <name>Crime Prevention</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/330-Crime-Prevention</permalink>
            </category>
            <category>
              <id>332</id>
              <name>Earthquakes</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/332-Earthquakes</permalink>
            </category>
            <category>
              <id>334</id>
              <name>Epidemics</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/334-Epidemics</permalink>
            </category>
            <category>
              <id>335</id>
              <name>Extreme Weather</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/335-Extreme-Weather</permalink>
            </category>
            <category>
              <id>336</id>
              <name>Family Health &amp; Safety</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/336-Family-Health-and-Safety</permalink>
            </category>
            <category>
              <id>342</id>
              <name>Fire</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/342-Fire</permalink>
            </category>
            <category>
              <id>343</id>
              <name>First Aid</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/343-First-Aid</permalink>
            </category>
            <category>
              <id>327</id>
              <name>General Disasters &amp; Emergency Preparedness</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/327-General-Disasters-and-Emergency-Preparedness</permalink>
            </category>
            <category>
              <id>345</id>
              <name>Home Security</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/345-Home-Security</permalink>
            </category>
            <category>
              <id>346</id>
              <name>Life-Saving Techniques</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/346-LifeSaving-Techniques</permalink>
            </category>
            <category>
              <id>347</id>
              <name>Out Of This World</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/347-Out-Of-This-World</permalink>
            </category>
            <category>
              <id>348</id>
              <name>Personal Security &amp; Self-Defense</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/348-Personal-Security-and-SelfDefense</permalink>
            </category>
            <category>
              <id>349</id>
              <name>Poison Prevention</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/349-Poison-Prevention</permalink>
            </category>
            <category>
              <id>350</id>
              <name>Snowstorms</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/350-Snowstorms</permalink>
            </category>
            <category>
              <id>351</id>
              <name>Storms</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/351-Storms</permalink>
            </category>
            <category>
              <id>352</id>
              <name>Substance Abuse</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/352-Substance-Abuse</permalink>
            </category>
            <category>
              <id>353</id>
              <name>Survival Skills</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/353-Survival-Skills</permalink>
            </category>
            <category>
              <id>354</id>
              <name>Terrorism</name>
              <parent-id>326</parent-id>
              <permalink>http://www.howcast.com/categories/354-Terrorism</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>355</id>
          <name>Food &amp; Drink</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/355-Food-and-Drink</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1788</id>
              <name>African Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/1788-African-Cooking</permalink>
            </category>
            <category>
              <id>373</id>
              <name>American Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/373-American-Cooking</permalink>
            </category>
            <category>
              <id>374</id>
              <name>Appetizers &amp; Snacks</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/374-Appetizers-and-Snacks</permalink>
            </category>
            <category>
              <id>375</id>
              <name>Asian Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/375-Asian-Cooking</permalink>
            </category>
            <category>
              <id>361</id>
              <name>Bartending Guides</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/361-Bartending-Guides</permalink>
            </category>
            <category>
              <id>364</id>
              <name>Beer</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/364-Beer</permalink>
            </category>
            <category>
              <id>381</id>
              <name>Bread</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/381-Bread</permalink>
            </category>
            <category>
              <id>382</id>
              <name>Breakfast</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/382-Breakfast</permalink>
            </category>
            <category>
              <id>383</id>
              <name>Caribbean Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/383-Caribbean-Cooking</permalink>
            </category>
            <category>
              <id>388</id>
              <name>Chili, Soups &amp; Stews</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/388-Chili-Soups-and-Stews</permalink>
            </category>
            <category>
              <id>356</id>
              <name>Coffee, Tea and Other Drinks</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/356-Coffee-Tea-and-Other-Drinks</permalink>
            </category>
            <category>
              <id>392</id>
              <name>Cooking Basics</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/392-Cooking-Basics</permalink>
            </category>
            <category>
              <id>393</id>
              <name>Cooking Equipment &amp; Utensils</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/393-Cooking-Equipment-and-Utensils</permalink>
            </category>
            <category>
              <id>439</id>
              <name>Dazzling Stuff</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/439-Dazzling-Stuff</permalink>
            </category>
            <category>
              <id>398</id>
              <name>Desserts</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/398-Desserts</permalink>
            </category>
            <category>
              <id>371</id>
              <name>Drinking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/371-Drinking</permalink>
            </category>
            <category>
              <id>405</id>
              <name>European Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/405-European-Cooking</permalink>
            </category>
            <category>
              <id>410</id>
              <name>Fish</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/410-Fish</permalink>
            </category>
            <category>
              <id>430</id>
              <name>Food &amp; Eating</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/430-Food-and-Eating</permalink>
            </category>
            <category>
              <id>415</id>
              <name>Food on the Go</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/415-Food-on-the-Go</permalink>
            </category>
            <category>
              <id>416</id>
              <name>Food Preparation and Safety</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/416-Food-Preparation-and-Safety</permalink>
            </category>
            <category>
              <id>372</id>
              <name>General Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/372-General-Cooking</permalink>
            </category>
            <category>
              <id>417</id>
              <name>Grilling</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/417-Grilling</permalink>
            </category>
            <category>
              <id>418</id>
              <name>Holiday Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/418-Holiday-Cooking</permalink>
            </category>
            <category>
              <id>423</id>
              <name>Mexican &amp; Latin American Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/423-Mexican-and-Latin-American-Cooking</permalink>
            </category>
            <category>
              <id>424</id>
              <name>Middle Eastern Cooking</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/424-Middle-Eastern-Cooking</permalink>
            </category>
            <category>
              <id>1738</id>
              <name>Noodles &amp; Pasta</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/1738-Noodles-and-Pasta</permalink>
            </category>
            <category>
              <id>425</id>
              <name>Pizza</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/425-Pizza</permalink>
            </category>
            <category>
              <id>426</id>
              <name>Produce</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/426-Produce</permalink>
            </category>
            <category>
              <id>427</id>
              <name>Salads</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/427-Salads</permalink>
            </category>
            <category>
              <id>1699</id>
              <name>Sandwiches</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/1699-Sandwiches</permalink>
            </category>
            <category>
              <id>1700</id>
              <name>Sauces, Dressings &amp; Condiments</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/1700-Sauces-Dressings-and-Condiments</permalink>
            </category>
            <category>
              <id>428</id>
              <name>Side Dishes</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/428-Side-Dishes</permalink>
            </category>
            <category>
              <id>435</id>
              <name>Tobacco</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/435-Tobacco</permalink>
            </category>
            <category>
              <id>429</id>
              <name>Vegetarian &amp; Vegan</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/429-Vegetarian-and-Vegan</permalink>
            </category>
            <category>
              <id>367</id>
              <name>Wine</name>
              <parent-id>355</parent-id>
              <permalink>http://www.howcast.com/categories/367-Wine</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>440</id>
          <name>Games</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/440-Games</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>442</id>
              <name>Board Games &amp; Family Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/442-Board-Games-and-Family-Games</permalink>
            </category>
            <category>
              <id>443</id>
              <name>Card Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/443-Card-Games</permalink>
            </category>
            <category>
              <id>449</id>
              <name>Chess</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/449-Chess</permalink>
            </category>
            <category>
              <id>450</id>
              <name>Computer &amp; Video Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/450-Computer-and-Video-Games</permalink>
            </category>
            <category>
              <id>459</id>
              <name>Gambling</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/459-Gambling</permalink>
            </category>
            <category>
              <id>441</id>
              <name>General Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/441-General-Games</permalink>
            </category>
            <category>
              <id>466</id>
              <name>Magic</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/466-Magic</permalink>
            </category>
            <category>
              <id>471</id>
              <name>Outdoor &amp; Party Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/471-Outdoor-and-Party-Games</permalink>
            </category>
            <category>
              <id>476</id>
              <name>Pool</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/476-Pool</permalink>
            </category>
            <category>
              <id>477</id>
              <name>Role Playing Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/477-Role-Playing-Games</permalink>
            </category>
            <category>
              <id>478</id>
              <name>Travel Games</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/478-Travel-Games</permalink>
            </category>
            <category>
              <id>1702</id>
              <name>Yo-Yo Tricks</name>
              <parent-id>440</parent-id>
              <permalink>http://www.howcast.com/categories/1702-YoYo-Tricks</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>479</id>
          <name>Health &amp; Nutrition</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/479-Health-and-Nutrition</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>494</id>
              <name>Diet</name>
              <parent-id>479</parent-id>
              <permalink>http://www.howcast.com/categories/494-Diet</permalink>
            </category>
            <category>
              <id>500</id>
              <name>Diseases &amp; Disorders</name>
              <parent-id>479</parent-id>
              <permalink>http://www.howcast.com/categories/500-Diseases-and-Disorders</permalink>
            </category>
            <category>
              <id>510</id>
              <name>Exercise</name>
              <parent-id>479</parent-id>
              <permalink>http://www.howcast.com/categories/510-Exercise</permalink>
            </category>
            <category>
              <id>480</id>
              <name>General Health</name>
              <parent-id>479</parent-id>
              <permalink>http://www.howcast.com/categories/480-General-Health</permalink>
            </category>
            <category>
              <id>521</id>
              <name>Mental Health</name>
              <parent-id>479</parent-id>
              <permalink>http://www.howcast.com/categories/521-Mental-Health</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>522</id>
          <name>Holidays &amp; Celebrations</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/522-Holidays-and-Celebrations</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>524</id>
              <name>Bar and Bat Mitzvahs</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/524-Bar-and-Bat-Mitzvahs</permalink>
            </category>
            <category>
              <id>525</id>
              <name>Birthdays</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/525-Birthdays</permalink>
            </category>
            <category>
              <id>526</id>
              <name>Christmas</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/526-Christmas</permalink>
            </category>
            <category>
              <id>528</id>
              <name>Easter</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/528-Easter</permalink>
            </category>
            <category>
              <id>523</id>
              <name>General Holidays &amp; Parties</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/523-General-Holidays-and-Parties</permalink>
            </category>
            <category>
              <id>529</id>
              <name>Gift Giving</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/529-Gift-Giving</permalink>
            </category>
            <category>
              <id>530</id>
              <name>Graduations</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/530-Graduations</permalink>
            </category>
            <category>
              <id>531</id>
              <name>Halloween</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/531-Halloween</permalink>
            </category>
            <category>
              <id>532</id>
              <name>Halloween Crafts</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/532-Halloween-Crafts</permalink>
            </category>
            <category>
              <id>533</id>
              <name>Independence Day</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/533-Independence-Day</permalink>
            </category>
            <category>
              <id>534</id>
              <name>Jewish Holidays</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/534-Jewish-Holidays</permalink>
            </category>
            <category>
              <id>542</id>
              <name>New Year's</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/542-New-Years</permalink>
            </category>
            <category>
              <id>552</id>
              <name>Party Games</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/552-Party-Games</permalink>
            </category>
            <category>
              <id>543</id>
              <name>Party Planning</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/543-Party-Planning</permalink>
            </category>
            <category>
              <id>556</id>
              <name>St. Patrick's Day</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/556-St-Patricks-Day</permalink>
            </category>
            <category>
              <id>557</id>
              <name>Thanksgiving</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/557-Thanksgiving</permalink>
            </category>
            <category>
              <id>558</id>
              <name>Valentine's Day</name>
              <parent-id>522</parent-id>
              <permalink>http://www.howcast.com/categories/558-Valentines-Day</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>559</id>
          <name>House &amp; Garden</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/559-House-and-Garden</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>639</id>
              <name>Flower Gardening</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/639-Flower-Gardening</permalink>
            </category>
            <category>
              <id>642</id>
              <name>Fruit, Vegetable &amp; Herb Gardening</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/642-Fruit-Vegetable-and-Herb-Gardening</permalink>
            </category>
            <category>
              <id>646</id>
              <name>Gardening Tools &amp; Equipment</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/646-Gardening-Tools-and-Equipment</permalink>
            </category>
            <category>
              <id>629</id>
              <name>General Gardening</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/629-General-Gardening</permalink>
            </category>
            <category>
              <id>560</id>
              <name>General House &amp; Home</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/560-General-House-and-Home</permalink>
            </category>
            <category>
              <id>623</id>
              <name>Home Appliances &amp; Tools</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/623-Home-Appliances-and-Tools</permalink>
            </category>
            <category>
              <id>577</id>
              <name>Home Economics</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/577-Home-Economics</permalink>
            </category>
            <category>
              <id>580</id>
              <name>Home Exterior</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/580-Home-Exterior</permalink>
            </category>
            <category>
              <id>585</id>
              <name>Home Heating &amp; Cooling</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/585-Home-Heating-and-Cooling</permalink>
            </category>
            <category>
              <id>609</id>
              <name>Home Organizing &amp; Storage</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/609-Home-Organizing-and-Storage</permalink>
            </category>
            <category>
              <id>591</id>
              <name>Household Moving</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/591-Household-Moving</permalink>
            </category>
            <category>
              <id>571</id>
              <name>Housekeeping</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/571-Housekeeping</permalink>
            </category>
            <category>
              <id>596</id>
              <name>Interior Decoration</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/596-Interior-Decoration</permalink>
            </category>
            <category>
              <id>651</id>
              <name>Landscaping</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/651-Landscaping</permalink>
            </category>
            <category>
              <id>655</id>
              <name>Lawn Care</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/655-Lawn-Care</permalink>
            </category>
            <category>
              <id>603</id>
              <name>Lighting &amp; Electrical</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/603-Lighting-and-Electrical</permalink>
            </category>
            <category>
              <id>614</id>
              <name>Plumbing</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/614-Plumbing</permalink>
            </category>
            <category>
              <id>619</id>
              <name>Remodeling</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/619-Remodeling</permalink>
            </category>
            <category>
              <id>659</id>
              <name>Trees &amp; Bushes</name>
              <parent-id>559</parent-id>
              <permalink>http://www.howcast.com/categories/659-Trees-and-Bushes</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>662</id>
          <name>Kids</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/662-Kids</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>663</id>
              <name>Body &amp; Health</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/663-Body-and-Health</permalink>
            </category>
            <category>
              <id>697</id>
              <name>Clothing and Dress</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/697-Clothing-and-Dress</permalink>
            </category>
            <category>
              <id>705</id>
              <name>Cooking and Food</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/705-Cooking-and-Food</permalink>
            </category>
            <category>
              <id>753</id>
              <name>Crafts</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/753-Crafts</permalink>
            </category>
            <category>
              <id>764</id>
              <name>Family Life</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/764-Family-Life</permalink>
            </category>
            <category>
              <id>768</id>
              <name>Games &amp; Activities</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/768-Games-and-Activities</permalink>
            </category>
            <category>
              <id>776</id>
              <name>Holidays</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/776-Holidays</permalink>
            </category>
            <category>
              <id>791</id>
              <name>Money</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/791-Money</permalink>
            </category>
            <category>
              <id>815</id>
              <name>School</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/815-School</permalink>
            </category>
            <category>
              <id>823</id>
              <name>Science &amp; Technology</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/823-Science-and-Technology</permalink>
            </category>
            <category>
              <id>832</id>
              <name>Trips &amp; Vacation</name>
              <parent-id>662</parent-id>
              <permalink>http://www.howcast.com/categories/832-Trips-and-Vacation</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>841</id>
          <name>Language &amp; Reference</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/841-Language-and-Reference</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>875</id>
              <name>Etiquette</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/875-Etiquette</permalink>
            </category>
            <category>
              <id>854</id>
              <name>Foreign Languages</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/854-Foreign-Languages</permalink>
            </category>
            <category>
              <id>1727</id>
              <name>How To Howcast</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/1727-How-To-Howcast</permalink>
            </category>
            <category>
              <id>862</id>
              <name>Legal Guides</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/862-Legal-Guides</permalink>
            </category>
            <category>
              <id>867</id>
              <name>Politics &amp; Citizenship</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/867-Politics-and-Citizenship</permalink>
            </category>
            <category>
              <id>871</id>
              <name>Public Speaking</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/871-Public-Speaking</permalink>
            </category>
            <category>
              <id>842</id>
              <name>Reference</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/842-Reference</permalink>
            </category>
            <category>
              <id>846</id>
              <name>Writing</name>
              <parent-id>841</parent-id>
              <permalink>http://www.howcast.com/categories/846-Writing</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>901</id>
          <name>Mind &amp; Body</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/901-Mind-and-Body</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>903</id>
              <name>Alternative Medicine &amp; Natural Healing</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/903-Alternative-Medicine-and-Natural-Healing</permalink>
            </category>
            <category>
              <id>1703</id>
              <name>Astrology</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/1703-Astrology</permalink>
            </category>
            <category>
              <id>902</id>
              <name>General Mind &amp; Body</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/902-General-Mind-and-Body</permalink>
            </category>
            <category>
              <id>909</id>
              <name>Meditation</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/909-Meditation</permalink>
            </category>
            <category>
              <id>914</id>
              <name>Mental Health &amp; Well-Being</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/914-Mental-Health-and-WellBeing</permalink>
            </category>
            <category>
              <id>922</id>
              <name>Mindbody Healing</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/922-Mindbody-Healing</permalink>
            </category>
            <category>
              <id>927</id>
              <name>People With Disabilities</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/927-People-With-Disabilities</permalink>
            </category>
            <category>
              <id>947</id>
              <name>Physical Well-Being</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/947-Physical-WellBeing</permalink>
            </category>
            <category>
              <id>952</id>
              <name>Self-Improvement</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/952-SelfImprovement</permalink>
            </category>
            <category>
              <id>962</id>
              <name>Sports Fitness</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/962-Sports-Fitness</permalink>
            </category>
            <category>
              <id>967</id>
              <name>Workstation Health / RSI Issues</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/967-Workstation-Health-RSI-Issues</permalink>
            </category>
            <category>
              <id>972</id>
              <name>Yoga</name>
              <parent-id>901</parent-id>
              <permalink>http://www.howcast.com/categories/972-Yoga</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>978</id>
          <name>Parenting &amp; Family</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/978-Parenting-and-Family</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>979</id>
              <name>Baby Care</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/979-Baby-Care</permalink>
            </category>
            <category>
              <id>987</id>
              <name>Family</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/987-Family</permalink>
            </category>
            <category>
              <id>994</id>
              <name>Family Health &amp; Safety</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/994-Family-Health-and-Safety</permalink>
            </category>
            <category>
              <id>1000</id>
              <name>Family Illness &amp; Death</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/1000-Family-Illness-and-Death</permalink>
            </category>
            <category>
              <id>1004</id>
              <name>Marriage</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/1004-Marriage</permalink>
            </category>
            <category>
              <id>1010</id>
              <name>Parenting</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/1010-Parenting</permalink>
            </category>
            <category>
              <id>1027</id>
              <name>Pregnancy</name>
              <parent-id>978</parent-id>
              <permalink>http://www.howcast.com/categories/1027-Pregnancy</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1048</id>
          <name>Performing Arts</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1048-Performing-Arts</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1055</id>
              <name>Acting</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1055-Acting</permalink>
            </category>
            <category>
              <id>1061</id>
              <name>Carnivals, Festivals &amp; Amusement Parks</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1061-Carnivals-Festivals-and-Amusement-Parks</permalink>
            </category>
            <category>
              <id>1062</id>
              <name>Celebrities</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1062-Celebrities</permalink>
            </category>
            <category>
              <id>1063</id>
              <name>Dance</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1063-Dance</permalink>
            </category>
            <category>
              <id>1067</id>
              <name>Film &amp; Television</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1067-Film-and-Television</permalink>
            </category>
            <category>
              <id>1049</id>
              <name>General Performing Arts</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1049-General-Performing-Arts</permalink>
            </category>
            <category>
              <id>1076</id>
              <name>Humor &amp; Comedy</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1076-Humor-and-Comedy</permalink>
            </category>
            <category>
              <id>1082</id>
              <name>Music Appreciation &amp; Buying Guides</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1082-Music-Appreciation-and-Buying-Guides</permalink>
            </category>
            <category>
              <id>1088</id>
              <name>Music Business</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1088-Music-Business</permalink>
            </category>
            <category>
              <id>1112</id>
              <name>Music Shows and Concerts</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1112-Music-Shows-and-Concerts</permalink>
            </category>
            <category>
              <id>1095</id>
              <name>Musical Instruments</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1095-Musical-Instruments</permalink>
            </category>
            <category>
              <id>1113</id>
              <name>Theater</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1113-Theater</permalink>
            </category>
            <category>
              <id>1705</id>
              <name>Vocals &amp; Singing</name>
              <parent-id>1048</parent-id>
              <permalink>http://www.howcast.com/categories/1705-Vocals-and-Singing</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1120</id>
          <name>Personal Care &amp; Style</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1120-Personal-Care-and-Style</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1121</id>
              <name>Fashion Basics</name>
              <parent-id>1120</parent-id>
              <permalink>http://www.howcast.com/categories/1121-Fashion-Basics</permalink>
            </category>
            <category>
              <id>1143</id>
              <name>Hair</name>
              <parent-id>1120</parent-id>
              <permalink>http://www.howcast.com/categories/1143-Hair</permalink>
            </category>
            <category>
              <id>1149</id>
              <name>Hygiene</name>
              <parent-id>1120</parent-id>
              <permalink>http://www.howcast.com/categories/1149-Hygiene</permalink>
            </category>
            <category>
              <id>1135</id>
              <name>Personal Care &amp; Beauty</name>
              <parent-id>1120</parent-id>
              <permalink>http://www.howcast.com/categories/1135-Personal-Care-and-Beauty</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1153</id>
          <name>Pets</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1153-Pets</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1155</id>
              <name>Backyard Wildlife</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1155-Backyard-Wildlife</permalink>
            </category>
            <category>
              <id>1156</id>
              <name>Birds</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1156-Birds</permalink>
            </category>
            <category>
              <id>1157</id>
              <name>Cats</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1157-Cats</permalink>
            </category>
            <category>
              <id>1162</id>
              <name>Dogs</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1162-Dogs</permalink>
            </category>
            <category>
              <id>1167</id>
              <name>Fish &amp; Aquariums</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1167-Fish-and-Aquariums</permalink>
            </category>
            <category>
              <id>1154</id>
              <name>General Pets</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1154-General-Pets</permalink>
            </category>
            <category>
              <id>1170</id>
              <name>Horses</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1170-Horses</permalink>
            </category>
            <category>
              <id>1174</id>
              <name>Rabbits</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1174-Rabbits</permalink>
            </category>
            <category>
              <id>1175</id>
              <name>Reptiles</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1175-Reptiles</permalink>
            </category>
            <category>
              <id>1176</id>
              <name>Small Pets</name>
              <parent-id>1153</parent-id>
              <permalink>http://www.howcast.com/categories/1176-Small-Pets</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1177</id>
          <name>Religion &amp; Spirituality</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1177-Religion-and-Spirituality</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1179</id>
              <name>Buddhism</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1179-Buddhism</permalink>
            </category>
            <category>
              <id>1183</id>
              <name>Christianity</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1183-Christianity</permalink>
            </category>
            <category>
              <id>1212</id>
              <name>Hinduism</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1212-Hinduism</permalink>
            </category>
            <category>
              <id>1225</id>
              <name>Islam</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1225-Islam</permalink>
            </category>
            <category>
              <id>1247</id>
              <name>Judaism</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1247-Judaism</permalink>
            </category>
            <category>
              <id>1271</id>
              <name>New Age</name>
              <parent-id>1177</parent-id>
              <permalink>http://www.howcast.com/categories/1271-New-Age</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1296</id>
          <name>Sex &amp; Relationships</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1296-Sex-and-Relationships</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1297</id>
              <name>Communication</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1297-Communication</permalink>
            </category>
            <category>
              <id>1298</id>
              <name>Dating</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1298-Dating</permalink>
            </category>
            <category>
              <id>1307</id>
              <name>Friends &amp; Neighbors</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1307-Friends-and-Neighbors</permalink>
            </category>
            <category>
              <id>1308</id>
              <name>Gay &amp; Lesbian</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1308-Gay-and-Lesbian</permalink>
            </category>
            <category>
              <id>1309</id>
              <name>Marriage</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1309-Marriage</permalink>
            </category>
            <category>
              <id>1315</id>
              <name>Roommates</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1315-Roommates</permalink>
            </category>
            <category>
              <id>1316</id>
              <name>Sex</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1316-Sex</permalink>
            </category>
            <category>
              <id>1321</id>
              <name>Single Life</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1321-Single-Life</permalink>
            </category>
            <category>
              <id>1322</id>
              <name>Weddings</name>
              <parent-id>1296</parent-id>
              <permalink>http://www.howcast.com/categories/1322-Weddings</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1334</id>
          <name>Sports &amp; Fitness</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1334-Sports-and-Fitness</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1344</id>
              <name>Baseball</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1344-Baseball</permalink>
            </category>
            <category>
              <id>1349</id>
              <name>Basketball</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1349-Basketball</permalink>
            </category>
            <category>
              <id>1353</id>
              <name>Bikes &amp; Biking</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1353-Bikes-and-Biking</permalink>
            </category>
            <category>
              <id>1359</id>
              <name>Boats &amp; Boating</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1359-Boats-and-Boating</permalink>
            </category>
            <category>
              <id>1366</id>
              <name>Coaching</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1366-Coaching</permalink>
            </category>
            <category>
              <id>1371</id>
              <name>Exercise</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1371-Exercise</permalink>
            </category>
            <category>
              <id>1396</id>
              <name>Fishing</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1396-Fishing</permalink>
            </category>
            <category>
              <id>1382</id>
              <name>Football</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1382-Football</permalink>
            </category>
            <category>
              <id>1335</id>
              <name>General Sports</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1335-General-Sports</permalink>
            </category>
            <category>
              <id>1386</id>
              <name>Golf</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1386-Golf</permalink>
            </category>
            <category>
              <id>1402</id>
              <name>Guns &amp; Shooting</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1402-Guns-and-Shooting</permalink>
            </category>
            <category>
              <id>1392</id>
              <name>Hockey</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1392-Hockey</permalink>
            </category>
            <category>
              <id>1408</id>
              <name>Hunting</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1408-Hunting</permalink>
            </category>
            <category>
              <id>1417</id>
              <name>Martial Arts</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1417-Martial-Arts</permalink>
            </category>
            <category>
              <id>1424</id>
              <name>Olympics &amp; Olympic Sports</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1424-Olympics-and-Olympic-Sports</permalink>
            </category>
            <category>
              <id>1412</id>
              <name>Outdoor Skills</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1412-Outdoor-Skills</permalink>
            </category>
            <category>
              <id>1434</id>
              <name>Running</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1434-Running</permalink>
            </category>
            <category>
              <id>1437</id>
              <name>Skating &amp; Skateboarding</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1437-Skating-and-Skateboarding</permalink>
            </category>
            <category>
              <id>1440</id>
              <name>Soccer</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1440-Soccer</permalink>
            </category>
            <category>
              <id>1445</id>
              <name>Sports Fitness</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1445-Sports-Fitness</permalink>
            </category>
            <category>
              <id>1449</id>
              <name>Tennis &amp; Racquet Sports</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1449-Tennis-and-Racquet-Sports</permalink>
            </category>
            <category>
              <id>1454</id>
              <name>Water Sports</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1454-Water-Sports</permalink>
            </category>
            <category>
              <id>1463</id>
              <name>Winter Sports</name>
              <parent-id>1334</parent-id>
              <permalink>http://www.howcast.com/categories/1463-Winter-Sports</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1470</id>
          <name>Technology</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1470-Technology</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1752</id>
              <name>Apple &amp; MacIntosh</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1752-Apple-and-MacIntosh</permalink>
            </category>
            <category>
              <id>1472</id>
              <name>Computer &amp; Video Games</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1472-Computer-and-Video-Games</permalink>
            </category>
            <category>
              <id>1484</id>
              <name>Computer Hardware</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1484-Computer-Hardware</permalink>
            </category>
            <category>
              <id>1494</id>
              <name>Computer Software</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1494-Computer-Software</permalink>
            </category>
            <category>
              <id>1471</id>
              <name>General Technology</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1471-General-Technology</permalink>
            </category>
            <category>
              <id>1502</id>
              <name>Graphics Software</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1502-Graphics-Software</permalink>
            </category>
            <category>
              <id>1508</id>
              <name>Home Electronics</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1508-Home-Electronics</permalink>
            </category>
            <category>
              <id>1513</id>
              <name>Home Entertainment Systems</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1513-Home-Entertainment-Systems</permalink>
            </category>
            <category>
              <id>1519</id>
              <name>Internet &amp; World Wide Web</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1519-Internet-and-World-Wide-Web</permalink>
            </category>
            <category>
              <id>1748</id>
              <name>Networking &amp; Telecommunications</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1748-Networking-and-Telecommunications</permalink>
            </category>
            <category>
              <id>1532</id>
              <name>Operating Systems</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1532-Operating-Systems</permalink>
            </category>
            <category>
              <id>1728</id>
              <name>Science &amp; Technology Projects</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1728-Science-and-Technology-Projects</permalink>
            </category>
            <category>
              <id>1770</id>
              <name>Small Business Technology</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1770-Small-Business-Technology</permalink>
            </category>
            <category>
              <id>1536</id>
              <name>Telescopes &amp; Astronomy</name>
              <parent-id>1470</parent-id>
              <permalink>http://www.howcast.com/categories/1536-Telescopes-and-Astronomy</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1537</id>
          <name>Teens</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1537-Teens</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1538</id>
              <name>Diet &amp; Health</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1538-Diet-and-Health</permalink>
            </category>
            <category>
              <id>1543</id>
              <name>Jobs &amp; Money</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1543-Jobs-and-Money</permalink>
            </category>
            <category>
              <id>1546</id>
              <name>Parents &amp; Family</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1546-Parents-and-Family</permalink>
            </category>
            <category>
              <id>1551</id>
              <name>Relationships &amp; Dating</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1551-Relationships-and-Dating</permalink>
            </category>
            <category>
              <id>1557</id>
              <name>School &amp; Studying</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1557-School-and-Studying</permalink>
            </category>
            <category>
              <id>1563</id>
              <name>Social Issues</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1563-Social-Issues</permalink>
            </category>
            <category>
              <id>1569</id>
              <name>Style</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1569-Style</permalink>
            </category>
            <category>
              <id>1570</id>
              <name>Teen Life</name>
              <parent-id>1537</parent-id>
              <permalink>http://www.howcast.com/categories/1570-Teen-Life</permalink>
            </category>
          </subcategories>
        </category>
        <category>
          <id>1571</id>
          <name>Travel</name>
          <parent-id nil="true"></parent-id>
          <permalink>http://www.howcast.com/categories/1571-Travel</permalink>
          <parents>
          </parents>
          <subcategories>
            <category>
              <id>1584</id>
              <name>African Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1584-African-Travel</permalink>
            </category>
            <category>
              <id>1590</id>
              <name>Asian Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1590-Asian-Travel</permalink>
            </category>
            <category>
              <id>1599</id>
              <name>Australia &amp; New Zealand Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1599-Australia-and-New-Zealand-Travel</permalink>
            </category>
            <category>
              <id>1768</id>
              <name>Canadian Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1768-Canadian-Travel</permalink>
            </category>
            <category>
              <id>1602</id>
              <name>Caribbean Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1602-Caribbean-Travel</permalink>
            </category>
            <category>
              <id>1608</id>
              <name>European Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1608-European-Travel</permalink>
            </category>
            <category>
              <id>1572</id>
              <name>General Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1572-General-Travel</permalink>
            </category>
            <category>
              <id>1631</id>
              <name>General U.S. Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1631-General-US-Travel</permalink>
            </category>
            <category>
              <id>1618</id>
              <name>Latin American Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1618-Latin-American-Travel</permalink>
            </category>
            <category>
              <id>1625</id>
              <name>Middle Eastern Travel</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1625-Middle-Eastern-Travel</permalink>
            </category>
            <category>
              <id>1632</id>
              <name>Travel To New England</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1632-Travel-To-New-England</permalink>
            </category>
            <category>
              <id>1640</id>
              <name>Travel To the Middle Atlantic States</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1640-Travel-To-the-Middle-Atlantic-States</permalink>
            </category>
            <category>
              <id>1658</id>
              <name>Travel To the Midwest</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1658-Travel-To-the-Midwest</permalink>
            </category>
            <category>
              <id>1677</id>
              <name>Travel To the Pacific Northwest</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1677-Travel-To-the-Pacific-Northwest</permalink>
            </category>
            <category>
              <id>1648</id>
              <name>Travel To the Southern US</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1648-Travel-To-the-Southern-US</permalink>
            </category>
            <category>
              <id>1664</id>
              <name>Travel To the Southwest</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1664-Travel-To-the-Southwest</permalink>
            </category>
            <category>
              <id>1669</id>
              <name>Travel To the Western US</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1669-Travel-To-the-Western-US</permalink>
            </category>
            <category>
              <id>1684</id>
              <name>Travel To U.S. Cities</name>
              <parent-id>1571</parent-id>
              <permalink>http://www.howcast.com/categories/1684-Travel-To-US-Cities</permalink>
            </category>
          </subcategories>
        </category>
      </categories>
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
