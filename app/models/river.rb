class River < ActiveRecord::Base
  attr_accessible :tripArray, :length, :difficulty, :idealFlow, :description, :distanceFromHomeCity, :map, :hazards, :highlights, :environmentalEd, :onRiverSpecialConcerns, :nearestTown, :nearestStore, :shuttleDirections, :campingLocations, :localContacts, :emergencyPlan 
  has_many :trips, :inverse_of => :river
end