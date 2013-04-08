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


rivers = [
			{:name => 'Big River', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' }
		 ]

rivers.each do |river|
  River.create!(river)
end
