# MH 3/24/13  -- create blank Trips table -- will populate in later migration script 
class CreateTrips < ActiveRecord::Migration

	def change
		create_table :trips do |t|
		t.timestamps
		end
	end 

end
