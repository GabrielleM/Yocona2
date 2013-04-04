class River < ActiveRecord::Base
  attr_accessible :tripArray, :length, :difficulty, :idealFlow, :description, :distanceFromHomeCity, :map, :hazards, :highlights, :environmentalEd, :onRiverSpecialConcerns, :nearestTown, :nearestStore, :shuttleDirections, :campingLocations, :localContacts, :emergencyPlan 
end