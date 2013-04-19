# MH 3/24/13 -- Create association between River and Trip, where a trip belongs to a river. Also make attributes accessible by rest of app
# A trip cannot be created with a river (validates presence of)

class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides
  belongs_to :river
  validates_presence_of :river
end
