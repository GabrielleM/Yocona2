
gorge_id = 69
gorge_id  = River.find_by_name("South Fork of the American, Gorge").id


trips = [  
			{:leader=> "Natasha Abeygunawardena", :agency=> "Cameron House", :agency_contact=> "", :num_participants=> '25', :num_guides=> '14', :flow=> "1400 cfs", :start_date=> "2012-07-14 00:00:00", :duration=> '1', :river_id=> gorge_id},

			{:leader=> "Bill Weinberg", :agency=> "7 Tepees", :agency_contact=> "",:num_participants=> '18', :num_guides=> '10', :flow=> "1500 cfs", :start_date=> "2012-06-16 00:00:00", :duration=> '2', :summary=> "", :river_id=> gorge_id}
		]

Trip.import trips




=begin
	{:leader=> "Natasha Abeygunawardena", :agency=> "Cameron House", :agency_contact=> "", :num_participants=> '25', :num_guides=> '14', :flow=> "1400 cfs", :start_date=> "2012-07-14 00:00:00", :duration=> '1'}, 

 	{:leader=> "Bill Weinberg", :agency=> "7 Tepees", :agency_contact=> "",:num_participants=> '18', :num_guides=> '10', :flow=> "1500 cfs", :start_date=> "2012-06-16 00:00:00", :duration=> '2', :summary=> "" } 
 
trips.each do |trip|
  Trip.create!(trip)
end
=end
