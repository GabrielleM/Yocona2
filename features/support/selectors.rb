module HtmlSelectorsHelpers


# class Trip < ActiveRecord::Base
#   attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id

# end


# class Tmp < ActiveRecord::Base
#   attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes, :river_id
#   belongs_to :river
#   has_many :attachments, :as => :attachable
#   accepts_nested_attributes_for :attachments, :allow_destroy => true

# end




#####################

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


###################




# Trip._validators = Tmp._validators


  # Maps a name to a selector. Used primarily by the
  #
  # When /^(.+) within (.+)$/ do |step, scope|
  #
  # step definitions in web_steps.rb
  #
  def selector_for(locator)
    case locator

    when "the page"
      "html > body"

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    # when /^the (notice|error|info) flash$/
    # ".flash.#{$1}"

    # You can also return an array to use a different selector
    # type, like:
    #
    # when /the header/
    # [:xpath, "//header"]

    # This allows you to provide a quoted selector as the scope
    # for "within" steps as was previously the default for the
    # web steps:
    when /^"(.+)"$/
      $1

    else
      raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(HtmlSelectorsHelpers)