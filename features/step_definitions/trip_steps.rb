# Add a declarative step here for populating the DB with movies.


class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id
end

Given /the following trips exist/ do |trips_table|
  trips_table.hashes.each do |trip|
    begin
      Trip.create!(trip)
    rescue ActiveRecord::RecordNotUnique

      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
      x[0].attributes.values.should == ["Big River"]
    end
  end
  #flunk "Unimplemented"
end

def initdb ()
  tr = {:name => 'A river', :length => 'Medium', :difficulty => 'Intermediate', :ideal_flow => 'Medium', :hazards => 'Raining chipmunks', :highlights => 'Raining chipmunks', :nearest_town => 'Nowhereville', :description => 'It\'s a big river', :link => 'www.link.com', :environmental_ed => 'Environmental Ed Notes of some sort', :on_river_special_concerns => 'None', :emergency_plan =>'Run for your life', :shuttle_directions => 'Follow the yellow brick road', :camping_locations => 'Right here', :local_contacts => 'Mr. Bigglesworth', :nearest_store => 'Chevron quikmart', :map => 'Here\'s a map' }
  
  th =  {"leader"=>"abc", "agency"=>"a", "agency_contact"=>"", "start_date(1i)"=>"2013", "start_date(2i)"=>"4", "start_date(3i)"=>"8", "duration"=>"1", "flow"=>"", "num_participants"=>"", "num_guides"=>"", "report_link"=>"", "summary"=>"", "pictures"=>"", "river_id"=>"1"}
   begin
      River.create!(tr)
    rescue ActiveRecord::RecordNotUnique

      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
      x[0].attributes.values.should == ["Big River"]
    end
    begin
      Trip.create!(th)
    rescue ActiveRecord::RecordNotUnique

      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
      x[0].attributes.values.should == ["Big River"]
  end
end

  #flunk "Unimplemented"

Given(/^I delete the trip entry$/) do
   initdb()
    num = Trip.count
  Capybara.current_session.driver.delete "rivers/1/trips/#{num}"
  Trip.count.should == (num - 1)
  visit path_to("list trips")
end
#end
Given(/^the database preconditions have been met$/) do
initdb()
end