# MH 3/24/13 -- Create blank Rivers table -- will populate with actual columns in later migration script 

class CreateRivers < ActiveRecord::Migration

	def change
		create_table :rivers do |t|
		t.timestamps
		end
	end 

end
