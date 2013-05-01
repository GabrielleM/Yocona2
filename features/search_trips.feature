Feature: Search Trips by more than one specific attribute, such as trip leader. 
As a trip leader 
So that I can search for a specific trip which I know exists.
I want to type more than one specific attribute into a form and view all trips with those attributes.

Background: Trips are in database
	Given the following trips exist:

	#<Trip id: 10, created_at: "2013-04-26 06:33:05", updated_at: "2013-04-26 06:54:21", leader: "Natasha Abeygunawardena", agency: "Cameron House", agency_contact: "", num_participants: "25", num_guides: "14", report_link: "", flow: "1400", start_date: "2012-07-14 00:00:00", duration: 1, summary: "", pictures: nil, river_id: 127, image: nil> 

	#<Trip id: 11, created_at: "2013-04-26 07:58:50", updated_at: "2013-04-26 07:58:50", leader: "Bill Weinberg", agency: "7 Tepees", agency_contact: "", num_participants: "18", num_guides: "10", report_link: "", flow: "1500 cfs", start_date: "2012-06-16 00:00:00", duration: 2, summary: "", pictures: nil, river_id: 127, image: nil>] 
