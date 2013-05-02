# MH 3/24/13 -- Create Dummy seed file to generate a river, as at least 1 river instance is required to 
# prevent the routes to any trip/trips from failing the first time the client uses the page, due to 
# nested associations of resources 
rivers = [
			{ :name => 'Big River', 
				:length => 'Medium', 
				:difficulty => 'Intermediate', 
				:ideal_flow => 'Medium', 
				:hazards => 'Raining chipmunks', 
				:highlights => 'Raining chipmunks', 
				:nearest_town => 'Nowhereville', 
				:description => 'It\'s a big river', 
				:link => 'www.link.com', 
				:environmental_ed => 'Environmental Ed Notes of some sort', 
				:on_river_special_concerns => 'None', 
				:emergency_plan =>'Run for your life', 
				:shuttle_directions => 'Follow the yellow brick road', 
				:camping_locations => 'Right here', 
				:local_contacts => 'Mr. Bigglesworth', 
				:nearest_store => 'Chevron quikmart', 
				:map => 'Here\'s a map' 
			},

			{ :name => 'South Fork of the American, Chili Bar', 
				:length => '10 miles', 
				:difficulty => 'class 3+', 
				:ideal_flow => '1500-2500cfs', 
				:hazards => '', 
				:highlights => 'Meatgrinder and Troublemaker rapids', 
				:nearest_town => 'Coloma', 
				:description => 'fun class 3, dam release, very popular commercial run', 
				:link => 'http://cacreeks.com/amer-sf.htm', 
				:environmental_ed => '', 
				:on_river_special_concerns => '', 
				:emergency_plan =>'',
				:shuttle_directions => 'http://www.icorafting.org/main/tripleader/south-fork-american', 
				:camping_locations => 'Camp Lotus', 
				:local_contacts => '', 
				:nearest_store => '', 
				:map => ''
			},

			{ :name => 'South Fork of the American, Gorge', 
				:length => '10 miles', 
				:difficulty => 'class 3+', 
				:ideal_flow => '1500-2500cfs', 
				:hazards => '', 
				:highlights => 'Satan\'s Cesspool, Hospital Bar, Jumping Rock' , 
				:nearest_town => 'Coloma', 
				:description => 'fun class 3, dam release, very popular commercial run', 
				:link => 'http://cacreeks.com/amer-sf.htm', 
				:environmental_ed => '', 
				:on_river_special_concerns => '', 
				:emergency_plan =>'', 
				:shuttle_directions => 'http://www.icorafting.org/main/tripleader/south-fork-american', 
				:camping_locations => 'Camp Lotus', 
				:local_contacts => '', 
				:nearest_store => '', 
				:map => ''
			},

			{ :name => 'Kings', 
				:length => 'Medium', 
				:difficulty => 'Class 3', 
				:ideal_flow => '1000-1200 CFS', 
				:hazards => '', 
				:highlights => '',
				:nearest_town => 'Piedra', 
				:description => '', 
				:link => 'http://www.californiawhitewater.com/rivers/kings/',
				:environmental_ed => '', 
				:on_river_special_concerns => '', 
				:emergency_plan =>'', 
				:shuttle_directions => '', 
				:camping_locations => 'Kirch Flat campground, Garnet Dike campground', 
				:local_contacts => '', 
				:nearest_store => '', 
				:map => ''
			},

			{ :name => 'Merced', 
				:length => '28 miles', 
				:difficulty => 'Class III & IV', 
				:ideal_flow => 'Late April to August, for river flow information call (916) 368-8682', 
				:hazards => 'Strong rapids can flip a 16-foot raft.', 
				:highlights => 'Stark Reality, Ned\'s Gulch', 
				:nearest_town => 'Mariposa', 
				:description => '', 
				:link => '', 
				:environmental_ed => '', 
				:on_river_special_concerns => 'Rapids should be scouted before a run', 
				:emergency_plan =>'', 
				:shuttle_directions => 'Take Hwy 41 north from Fresno to Oakhurst. At Oakhurst take Hwy 49 west to Mariposa. At Mariposa, take Hwy 140 north to the Merced River.', 
				:camping_locations => 'Dirt Flat, Dry Gulch, reservations: http://www.reserveamerica.com/', 
				:local_contacts => '', 
				:nearest_store => '', 
				:map => 'http://www.dbw.ca.gov/Pubs/MercedRiver/Merced3.pdf' 
			},

			{ :name => 'Cache Creek', 
				:length => '6 miles', 
				:difficulty => 'moderate Class II', 
				:ideal_flow => '',
				:hazards => 'Rowboat Rapid, Class III', 
				:highlights => '',
				:nearest_town => '',
				:description => 'The river has solitude, even though you are steps away from Highway 16. The rapids are fun for a yonger group that does not have whitewater experience. The flow is consistent. Put in and takeout are reasonably easy. Camping is cheap. Bald eagles are a common sight, and the geology is amazing (subducted sedimentary rock formations abount)',  
				:link => '', 
				:environmental_ed => '',
				:on_river_special_concerns => '', 
				:emergency_plan => 'Contact campground host who has a radio that communicates with the CHP and Yolo sheriff.', 
				:shuttle_directions => 'Drive to Cache Creek took 2 hours from San Rafael, up 505 from Vacaville.', 
				:camping_locations => 'Camp sites hold 8 people and are 20 dollars a site. The group sites, which you can reserve at 530-666-8115 are 165 dollars - less than Lotus but more expensive than individual sites. On summer weekends, the campground fills up by Friday night, so send someone by midday Friday to get sites or reserve a group site.',
				:local_contacts => '', 
				:nearest_store => '', 
				:map => ''
			}
		 ]

rivers.each do |river|
  River.create!(river)
end






gorge_id = 69
gorge_id  = River.find_by_name("South Fork of the American, Gorge").id


trips = [  
			{:leader=> "Natasha Abeygunawardena", :agency=> "Cameron House", :agency_contact=> "", :num_participants=> '25', :num_guides=> '14', :flow=> "1400 cfs", :start_date=> "2012-07-14 00:00:00", :duration=> '1', :river_id=> gorge_id},

			{:leader=> "Bill Weinberg", :agency=> "7 Tepees", :agency_contact=> "",:num_participants=> '18', :num_guides=> '10', :flow=> "1500 cfs", :start_date=> "2012-06-16 00:00:00", :duration=> '2', :summary=> "", :river_id=> gorge_id}
		]







trips.each do |trip|
  Trip.create!(trip)
end





