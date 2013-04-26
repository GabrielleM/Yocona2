# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
# puts 'ROLES'
# YAML.load(ENV['ROLES']).each do |role|
#   Role.find_or_create_by_name({ :name => role }, :without_protection => true)
#   puts 'role: ' << role
# end
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.name
# user.confirm!
# user.add_role :admin

# MH 3/24/13 -- Create Dummy seed file to generate a river, as at least 1 river instance is required to 
# prevent the routes to any trip/trips from failing the first time the client uses the page, due to 
# nested associations of resources 
rivers = [
			{:name => 'Big River', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' },
			{:name => 'South Fork of the American, Chili Bar', :length => '10 miles', :difficulty => 'class 3+', :ideal_flow => '1500-2500cfs', :highlights => 'Meatgrinder and Troublemaker rapids', :nearest_town => 'Coloma', :description => 'fun class 3, dam release, very popular commercial run', :link => 'http://cacreeks.com/amer-sf.htm', :shuttle_directions => 'http://www.icorafting.org/main/tripleader/south-fork-american', :camping_locations => 'Camp Lotus', },
			{:name => 'South Fork of the American, Gorge', :length => '10 miles', :difficulty => 'class 3+', :ideal_flow => '1500-2500cfs', :highlights => "Satan's Cesspool, Hospital Bar, Jumping Rock" , :nearest_town => 'Coloma', :description => 'fun class 3, dam release, very popular commercial run', :link => 'http://cacreeks.com/amer-sf.htm', :shuttle_directions => 'http://www.icorafting.org/main/tripleader/south-fork-american', :camping_locations => 'Camp Lotus' },
			{:name => 'Kings', :length => 'Medium', :difficulty => 'Class 3', :ideal_flow => '1000-1200 CFS', :nearest_town => 'Piedra', :link => 'http://www.californiawhitewater.com/rivers/kings/',:camping_locations => 'Kirch Flat campground, Garnet Dike campground'}
		 ]
=begin
trips = [
			{:leader=> 'Bill Weinberg', :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes},
			{:leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes}, 
			{:leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes},
		 	{:leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes}
		 ]
=end




rivers.each do |river|
  River.create!(river)
end

=begin
trips.each do |trip|
  Trip.create!(trip)
end
=end



