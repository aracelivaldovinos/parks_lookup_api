# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_birds
    seed.generate_parks
  end

  def generate_birds
    25.times do |i|
      bird = Bird.create!(
        family_name: Faker::Creature::Bird.common_family_name,
        common_name: Faker::Creature::Bird.common_name,
        color: Faker::Creature::Bird.color, 
        geography: Faker::Creature::Bird.geo
      )
    end
  end

  def generate_parks
    Park.destroy_all
    parks_list = [
      ['47,389.67 acres (191.8 km2)',	'Covering most of Mount Desert Island and other coastal islands, Acadia features the tallest mountain on the Atlantic coast of the United States, granite peaks, ocean shoreline, woodlands, and lakes. There are freshwater, estuary, forest, and intertidal habitats.',	'Maine',	'Acadia'],
      ['9,000.00 acres (36.4 km2)',	'The southernmost national park is on three Samoan islands and protects coral reefs, rainforests, volcanic mountains, and white beaches. The area is also home to flying foxes, brown boobies, sea turtles, and 900 species of fish.', 'American Samoa',	'American Samoa'],
      ['76,518.98 acres (309.7 km2)',	'This site features more than 2,000 natural sandstone arches, including the Delicate Arch. In a desert climate millions of years of erosion have led to these structures, and the arid ground has life-sustaining soil crust and potholes, natural water-collecting basins. Other geologic formations are stone columns, spires, fins, and towers.',	'Utah',	'Arches'],
      ['242,755.94 acres (982.4 km2)'	,'The Badlands are a collection of buttes, pinnacles, spires, and grass prairies. It has the world\'s richest fossil beds from the Oligocene epoch, and there is wildlife including bison, bighorn sheep, black-footed ferrets, and swift foxes.',	'South Dakota',	'Badlands'],
      ['801,163.21 acres (3,242.2 km2)',	'Named for the Bend of the Rio Grande along the US–Mexico border, this park includes a part of the Chihuahuan Desert. A wide variety of Cretaceous and Tertiary fossils as well as cultural artifacts of Native Americans exist within its borders.'	'Texas',	'Big Bend'],
      ['172,924.07 acres (699.8 km2)',	'Located in Biscayne Bay, this park at the north end of the Florida Keys has four interrelated marine ecosystems: mangrove forest, the Bay, the Keys, and coral reefs. Threatened animals include the West Indian Manatee, American crocodile, various sea turtles, and peregrine falcon.' , 'Florida',	'Biscayne'],
      ['32,950.03 acres (133.3 km2)', 'The park protects a quarter of the Gunnison River, which has dark canyon walls from the Precambrian era. The canyon has very steep descents, and it is a site for river rafting and rock climbing. The narrow, steep canyon, made of gneiss and schist, is often in shadow, appearing black.',	'Colorado',	'Black Canyon of the Gunnison'],
      ['35,835.08 acres (145.0 km2)',	'Bryce Canyon is a giant natural amphitheatre along the Paunsaugunt Plateau. The unique area has hundreds of tall hoodoos formed by erosion. The region was originally settled by Native Americans and later by Mormon pioneers.',	'Utah',	'Bryce Canyon'],
      ['337,597.83 acres (1,366.2 km2)',	'This landscape was eroded into canyons, buttes, and mesas by the Colorado River, Green River, and their tributaries, which divide the park into three districts. There are rock pinnacles and other naturally sculpted rock, as well as artifacts from Ancient Pueblo Peoples.',	'Utah',	'Canyonlands'],
      ['241,904.26 acres (979.0 km2)',	'The park\'s Waterpocket Fold is a 100-mile (160 km) monocline that shows the Earth\'s geologic layers. Other natural features are monoliths and sandstone domes and cliffs shaped like the United States Capitol.',	'Utah',	'Capitol Reef'],
      ['46,766.45 acres (189.3 km2)',	'Carlsbad Caverns has 117 caves, the longest of which is over 120 miles (190 km) long. The Big Room is almost 4,000 feet (1,200 m) long, and the caves are home to over 400,000 Mexican Free-tailed Bats and sixteen other species. Above ground are the Chihuahuan Desert and Rattlesnake Springs.',	'New Mexico',	'Carlsbad Caverns'],
      ['249,561.00 acres (1,009.9 km2)',	'Five of the eight Channel Islands are protected, and half of the park\'s area is underwater. The islands have a unique Mediterranean ecosystem. They are home to over 2,000 species of land plants and animals, and 145 are unique to them. The islands were originally settled by the Chumash people.',	'California',	'Channel Islands'],
      ['26,545.86 acres (107.4 km2)',	'On the Congaree River, this park is the largest portion of old-growth floodplain forest left in North America. Some of the trees are the tallest in the Eastern US, and the Boardwalk Loop is an elevated walkway through the swamp.',	'South Carolina',	'Congaree'],
      ['183,224.05 acres (741.5 km2)',	'Crater Lake lies in the caldera of Mount Mazama formed 7,700 years ago after an eruption. It is the deepest lake in the United States and is known for its blue color and water clarity. There are two islands in the lake, and, with no inlets or outlets, all water comes through precipitation.',	'Oregon',	'Crater Lake'],
      ['32,860.73 acres (133.0 km2)',	'This park along the Cuyahoga River has waterfalls, hills, trails, and displays about early rural living. The Ohio and Erie Canal Towpath Trail follows the Ohio and Erie Canal, where mules towed canal boats. The park has numerous historic homes, bridges, and structures. The park also offers a scenic train ride with various trips available.',	'Ohio',	'Cuyahoga Valley'],
      ['3,372,401.96 acres (13,647.6 km2)',	'Death Valley is the hottest, lowest, and driest place in the United States. Daytime temperatures have topped 130°F (54°C) and it is home to Badwater Basin, the lowest point in North America. There are canyons, colorful badlands, sand dunes, mountains, and over 1000 species of plants in this graben on a fault line. Further geologic points of interest are salt flats, springs, and buttes.',	'California',	'Death Valley'],
      ['4,740,911.72 acres (19,185.8 km2)',	'Centered around the Mount McKinley, the tallest mountain in North America, Denali is serviced by a single road leading to Wonder Lake. McKinley and other peaks of the Alaska Range are covered with long glaciers and boreal forest. Wildlife includes grizzly bears, Dall sheep, caribou, and gray wolves.',	'Alaska',	'Denali'],
      ['64,701.22 acres (261.8 km2)',	'The Dry Tortugas on the west end of the Florida Keys are the site of Fort Jefferson, the largest masonry structure in the Western Hemisphere. With most of the park being water, it is the home of coral reefs and shipwrecks and is only accessible by plane or boat.',	'Florida',	'Dry Tortugas'],
      ['1,508,537.90 acres (6,104.8 km2)',	'The Everglades are the largest subtropical wilderness in the United States. This mangrove ecosystem and marine estuary is home to 36 protected species, including the Florida panther, American crocodile, and West Indian manatee. Some areas have been drained and developed; restoration projects aim to restore the ecology.',	'Florida',	'Everglades'],
      ['7,523,897.74 acres (30,448.1 km2)',	'This northernmost park protects part of the Brooks Range and has no park facilities. The land is home to Alaska natives, who have relied on the land and caribou for 11,000 years.',	'Alaska',	'Gates of the Arctic'],
      ['1,013,572.41 acres (4,101.8 km2)',	'Part of Waterton Glacier International Peace Park, this park has 26 remaining glaciers and 130 named lakes under the tall Rocky Mountain peaks. There are historic hotels and a landmark road in this region of rapidly receding glaciers. These mountains, formed by an overthrust, have the world\'s best sedimentary fossils from the Proterozoic era.',	'Montana', 'Glacier'],
      ['3,224,840.31 acres (13,050.5 km2)',	'Glacier Bay has numerous tidewater glaciers, mountains, and fjords. The temperate rainforest and the bay are home to grizzly bears, mountain goats, whales, seals, and eagles. When discovered in 1794 by George Vancouver, the entire bay was covered by ice, but the glaciers have receded over 65 miles (105 km).',	'Alaska',	'Glacier Bay'],
      ['1,217,403.32 acres (4,926.7 km2)',	'The Grand Canyon, carved out by the Colorado River, is 277 miles (446 km) long, up to 1 mile (1.6 km) deep, and up to 15 miles (24 km) wide. Millions of years of exposure has formed colorful layers of the Colorado Plateau in mesas and canyon walls.',	'Arizona',	'Grand Canyon'],
      ['309,994.66 acres (1,254.5 km2)',	'Grand Teton is the tallest mountain in the Teton Range. The park\'s Jackson Hole valley and reflective piedmont lakes contrast with the tall mountains, which abruptly rise from the sage-covered valley.',	'Wyoming',	'Grand Teton'],
      ['77,180.00 acres (312.3 km2)',	'Based around Wheeler Peak, the Great Basin has 5,000-year-old bristlecone pines, glacial moraines, and the limestone Lehman Caves. It has some of the country\'s darkest night skies, and there are animal species including Townsend\'s big-eared bat, Pronghorn, and Bonneville cutthroat trout.',	'Nevada',	'Great Basin'],
      ['42,983.74 acres (173.9 km2)',	'The tallest dunes in North America are up to 750 feet (230 m) tall and neighbor grasslands, shrublands and wetlands. They were formed by sand deposits of the Rio Grande on the San Luis Valley. The park also has alpine lakes, six 13,000-foot mountains, and ancient forests.',	'Colorado',	'Great Sand Dunes'],
      ['521,490.13 acres (2,110.4 km2)', 'The Great Smoky Mountains, part of the Appalachian Mountains, have a wide range of elevations, making them home to over 400 vertebrate species, 100 tree species, and 5000 plant species. Hiking is the park\'s main attraction, with over 800 miles (1,300 km) of trails, including 70 miles (110 km) of the Appalachian Trail. Other activities are fishing, horseback riding, and visiting some of nearly 80 historic structures.', 'Tennessee',	'Great Smoky Mountains'],
      ['86,415.97 acres (349.7 km2)',	'This park has Guadalupe Peak, the highest point in Texas, the scenic McKittrick Canyon full of Bigtooth Maples, part of the Chihuahuan Desert, and a fossilized reef from the Permian.',	'Texas', 'Guadalupe Mountains'],
      ['29,093.67 acres (117.7 km2)',	'The Haleakal volcano on Maui has a very large crater with many cinder cones, Hosmer\'s Grove of alien trees, and the native Hawaiian Goose. The Kipahulu section has numerous pools with freshwater fish. This National Park has the greatest number of endangered species.',	'Hawaii',	'Haleakal'],
      ['323,431.38 acres (1,308.9 km2)',	'This park on the Big Island protects the K?lauea and Mauna Loa volcanoes, two of the world\'s most active. Diverse ecosystems of the park range from those at sea level to 13,000 feet (4,000 m).',	'Hawaii',	'Hawaii Volcanoes'],
      ['5,549.75 acres (22.5 km2)',	'The only National Park in an urban area, this smallest National Park is based around the natural hot springs that have been managed for public use. Bathhouse Row preserves 47 of these with many beneficial minerals.',	'Arkansas',	'Hot Springs'],
      ['571,790.11 acres (2,314.0 km2)',	'The largest island in Lake Superior, this park is a site of isolation and wilderness. It has many shipwrecks, waterways, and hiking trails. The park also includes over 400 smaller islands in the waters up to 4.5 miles (7.2 km) from the island. There are only 20 mammal species and it is known for its wolf and moose relationship.',	'Michigan',	'Isle Royale'],
      ['789,745.47 acres (3,196.0 km2)',	'Covering parts of the Colorado and Mojave Deserts and the Little San Bernardino Mountains, this is the home of the Joshua tree. Across great elevation changes are sand dunes, dry lakes, rugged mountains, and granite monoliths.',	'California',	'Joshua Tree'],
      ['3,674,529.68 acres (14,870.3 km2)',	'This park on the Alaska Peninsula protects the Valley of Ten Thousand Smokes, an ash flow formed by the 1912 eruption of Novarupta, as well as Mount Katmai. Over 2,000 grizzly bears come here to catch spawning salmon.',	'Alaska',	'Katmai'],
      ['669,982.99 acres (2,711.3 km2)',	'Near Seward on the Kenai Peninsula, this park protects the Harding Icefield and at least 38 glaciers and fjords stemming from it. The only area accessible to the public by road is Exit Glacier, while the rest can only be viewed by boat tours.',	'Alaska',	'Kenai Fjords'],
      ['461,901.20 acres (1,869.2 km2)',	'Home to several Giant sequoia groves and the General Grant Tree, the world\'s second largest, this park also has part of the Kings River, site of the granite Kings Canyon, and San Joaquin River, as well as the Boyden Cave.',	'California',	'Kings Canyon'],
      ['1,750,716.50 acres (7,084.9 km2)',	'Kobuk Valley has 61 miles (98 km) of the Kobuk River and three regions of sand dunes. Created by glaciers, the Great Kobuk, the Little Kobuk, and the Hunt River Sand Dunes can reach 100 feet (30 m) high and 100 °F (38 °C), and they are the largest dunes in the arctic. Twice a year, half a million caribou migrate through the dunes and across river bluffs that contain ice age fossils.',	'Alaska',	'Kobuk Valley'],
      ['2,619,733.21 acres (10,601.7 km2)',	'The region around Lake Clark has four active volcanoes, including Mount Redoubt, rivers, glaciers, and waterfalls. There are temperate rainforests, a tundra plateau, and three mountain ranges.',	'Alaska',	'Lake Clark'],
      ['106,372.36 acres (430.5 km2)',	'Lassen Peak, the largest plug dome volcano in the world, is joined by all three other types of volcanoes in this park: shield, cinder dome, and composite. Other than the volcano, which last erupted in 1915, the park has hydrothermal areas, including fumaroles, boiling pools, and steaming ground, heated by molten rock under the peak.',	'California',	'Lassen Volcanic'],
      ['52,830.19 acres (213.8 km2)',	'With 392 miles (631 km) of passageways mapped, Mammoth Cave is by far the world\'s longest cave system. Cave animals include eight bat species, Kentucky cave shrimp, Northern cavefish, and cave salamanders. Above ground, the park contains Green River (Kentucky), 70 miles of hiking trails, sinkholes, and springs.',	'Kentucky',	'Mammoth Cave'],
      ['52,121.93 acres (210.9 km2)', 'This area has over 4,000 archaeological sites of the Ancestral Pueblo, who lived here for 700 years. Cliff dwellings built in the 12th and 13th centuries include Cliff Palace, which has 150 rooms and 23 kivas, and the Balcony House, with passages and tunnels.',	'Colorado',	'Mesa Verde'],
      ['235,625.00 acres (953.5 km2)',	'Mount Rainier, an active volcano, is the most prominent peak in the Cascades, and it is covered by 26 named glaciers including Carbon Glacier and Emmons Glacier, the largest in the continental United States. The mountain is popular for climbing, and more than half of the park is covered by subalpine and alpine forests. Paradise on the south slope is one of the snowiest places in the world, and the Longmire visitor center is the start of the Wonderland Trail, which encircles the mountain.',	'Washington',	'Mount Rainier'],
      ['504,780.94 acres (2,042.8 km2)',	'This complex includes the two units of the National Park and the Ross Lake and Lake Chelan National Recreation Areas. There are numerous glaciers, and popular hiking and climbing areas are Cascade Pass, Mount Shuksan, Mount Triumph, and Eldorado Peak.',	'Washington',	'North Cascades'],
      ['922,650.86 acres (3,733.8 km2)',	'Situated on the Olympic Peninsula, this park ranges from Pacific shoreline with tide pools to temperate rainforests to Mount Olympus. The glaciated Olympic Mountains overlook the Hoh Rain Forest and Quinault Rain Forest, the wettest area of the continental United States.',	'Washington',	'Olympic'],
      ['93,532.57 acres (378.5 km2)',	'This portion of the Chinle Formation has a great concentration of 225-million-year-old petrified wood. The surrounding region, the Painted Desert, has eroded red-hued volcanic rock called bentonite. There are also dinosaur fossils and over 350 Native American sites.',	'Arizona',	'Petrified Forest'],
      ['26,605.73 acres (107.7 km2)',	'Known for the namesake eroded leftovers of half of an extinct volcano, it is popular for its rock climbing.', 'California',	'Pinnacles'],
      ['112,512.05 acres (455.3 km2)',	'This park and the co-managed state parks protect almost half of all remaining Coastal Redwoods, the tallest trees on Earth. There are three large river systems in this very seismically active area, and the 37 miles (60 km) of protected coastline have tide pools and seastacks. The prairie, estuary, coast, river, and forest ecosystems have varied animal and plant species.',	'California',	'Redwood'],
      ['265,828.41 acres (1,075.8 km2)',	'This section of the Rocky Mountains has ecosystems varying in elevation from the over 150 riparian lakes to Montane and subalpine forests to the alpine tundra. Large wildlife including mule deer, bighorn sheep, black bears, and cougars inhabit these igneous mountains and glacier valleys. The fourteener Longs Peak and Bear Lake are popular destinations.	', 'Colorado',	'Rocky Mountain'],
      ['91,439.71 acres (370.0 km2)',	'Split into the separate Rincon Mountain and Tucson Mountain Districts, the dry Sonoran Desert is still home to much life in six biotic communities. Beyond the namesake Giant Saguaro cacti, there are barrel cacti, cholla cacti, and prickly pears, as well as Lesser Long-nosed Bats, Spotted Owls, and javelinas.',	'Arizona',	'Saguaro'],
      ['404,051.17 acres (1,635.1 km2)',	'This park protects the Giant Forest, which has the world\'s largest tree, General Sherman, as well as four of the next nine. It also has over 240 caves, the tallest mountain in the continental U.S., Mount Whitney, and the granite dome Moro Rock.',	'California',	'Sequoia'],
      ['199,045.23 acres (805.5 km2)',	'Shenandoah\'s Blue Ridge Mountains are covered by hardwood forests that are home to tens of thousands of animals. The Skyline Drive and Appalachian Trail run the entire length of this narrow park that has more than 500 miles (800 km) of hiking trails along scenic overlooks and waterfalls of the Shenandoah River.',	'Virginia',	'Shenandoah'],
      ['70,446.89 acres (285.1 km2)',	'This region that enticed and influenced President Theodore Roosevelt is now a park of three units in the badlands. Besides Roosevelt\'s historic cabin, there are scenic drives and backcountry hiking opportunities. Wildlife includes American Bison, pronghorns, Bighorn sheep, and wild horses.',	'North Dakota',	'Theodore Roosevelt'],
      ['14,688.87 acres (59.4 km2)',	'The island of Saint John has rich human and natural history. There are Taino archaeological sites and ruins of sugar plantations from Columbus\'s time. Past the pristine beaches are mangroves, seagrass beds, coral reefs and algal plains.',	'United States Virgin Islands',	'Virgin Islands'],
      ['218,200.17 acres (883.0 km2)',	'This park on four main lakes, a site for canoeing, kayaking, and fishing, has a history of Ojibwe Native Americans, French fur traders called voyageurs, and a gold rush. Formed by glaciers, this region has tall bluffs, rock gardens, islands and bays, and historic buildings.	', 'Minnesota',	'Voyageurs'],
      ['28,295.03 acres (114.5 km2)', 'Wind Cave is distinctive for its calcite fin formations called boxwork and needle-like growths called frostwork. The cave, which was discovered by the sound of wind coming from a hole in the ground, is the world\'s densest cave system. Above ground is a mixed-grass prairie with animals such as bison, black-footed ferrets, and prairie dogs, and Ponderosa pine forests home to cougars and elk.',	'South Dakota',	'Wind Cave'],
      ['8,323,147.59 acres (33,682.6 km2)',	'This mountainous land has the convergence of the Alaska, Chugach, and Wrangell-Saint Elias Ranges, which have many of the continent\'s tallest mountains over 16,000 feet (4,900 m), including Mount Saint Elias. More than 25% of this park of volcanic peaks is covered with glaciers, including the tidewater Hubbard Glacier, piedmont Malaspina Glacier, and valley Nabesna Glacier.',	'Alaska',	'Wrangell –St. Elias'],
      ['2,219,790.71 acres (8,983.2 km2)',	'Situated on the Yellowstone Caldera, the first national park in the world has vast geothermal areas such as hot springs and geysers, the best-known being Old Faithful and Grand Prismatic Spring. The yellow-hued Grand Canyon of the Yellowstone River has numerous waterfalls, and four mountain ranges run through the park. There are almost 60 mammal species, including the gray wolf, grizzly bear, lynx, bison, and elk.', 'Wyoming',	'Yellowstone'],
      ['761,266.19 acres (3,080.7 km2)',	'Yosemite has towering cliffs, waterfalls, and sequoias in a diverse area of geology and hydrology. Half Dome and El Capitan rise from the central glacier-formed Yosemite Valley, as does Yosemite Falls, North America\'s tallest waterfall. Three Giant Sequoia groves and vast wilderness are home to diverse wildlife.	', 'California',	'Yosemite'],
      ['146,597.60 acres (593.3 km2)',	'This geologically unique area has colorful sandstone canyons, high plateaus, and rock towers. Natural arches and exposed formations of the Colorado Plateau make up a large wilderness of four ecosystems.',	'Utah',	'Zion']
    ]

    parks_list.each do |item1, item2, item3, item4|
      Park.create( area: item1, description: item2, state: item3, name: item4)
    end
  end 
end

Seed.begin


 


