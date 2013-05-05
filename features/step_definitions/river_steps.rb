# Add a declarative step here for populating the DB with movies.

 class TripsController < ApplicationController
    skip_before_filter :authenticate_user!
 end

 class RiversController < ApplicationController
    skip_before_filter :authenticate_user!
 end


class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id

end


class Tmp < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id
  belongs_to :river
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true

end


Trip._validators = Tmp._validators

class Rmp < ActiveRecord::Base
  attr_accessible :name, :length, :difficulty, :ideal_flow, :description, :map, :hazards, :highlights, :environmental_ed, :on_river_special_concerns, :nearest_town, :nearest_store, :shuttle_directions, :camping_locations, :local_contacts, :emergency_plan, :link, :attachments_attributes 
  has_many :trip
  #MH 5/1/13 Code for Multiple photo upload in CarrierWave
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true
end

River._validators = Rmp._validators




Given /the following rivers exist/ do |rivers_table|

  rivers_table.hashes.each do |river|
    begin
      River.create!(river)
    rescue Exception => e

      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
      x[0].attributes.values.should == ["Big River"]
    end

  end
  #flunk "Unimplemented"
end

#Given(/^I am on the Yocona home page$/) do
Given(/^I delete the river entry$/) do
    num = River.count
  Capybara.current_session.driver.delete "rivers/#{num}"
  River.count.should == (num - 1)
  visit path_to("list rivers")
end
#end

#page.execute_script("$('body').append("<a href="/users/1" data-method="delete" rel="nofollow">Destroy</a>")")



When(/^I visit the Yocona home page$/) do
  '/index'
end




When(/^I visit the yocona home page$/) do
  '/index'
  #pending # express the regexp above with the code you wish you had
end

Then(/^I should see the default index$/) do
    '/index'

  puts page.body
  #pending # express the regexp above with the code you wish you had
end

