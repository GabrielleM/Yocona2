# MH 3/24/13 -- Create full columns structure for Rivers table

class AddColumnsToRiver < ActiveRecord::Migration
  def change
  	add_column :rivers, :name, :string, :unique => true 
  	add_column :rivers, :length, :string
  	add_column :rivers, :difficulty, :string
  	add_column :rivers, :ideal_flow, :string
  	add_column :rivers, :hazards, :string
  	add_column :rivers, :highlights, :string
  	add_column :rivers, :nearest_town, :string
  	add_column :rivers, :description, :text
  	add_column :rivers, :link, :text
  	add_column :rivers, :environmental_ed, :text
  	add_column :rivers, :on_river_special_concerns, :text
  	add_column :rivers, :emergency_plan, :text
  	add_column :rivers, :shuttle_directions, :text
  	add_column :rivers, :camping_locations, :text
  	add_column :rivers, :local_contacts, :text
  	add_column :rivers, :nearest_store, :text
  	add_column :rivers, :map, :text
  end
end

  	# change_table :trips do |t|
  	#     t.string 'name'
   #  	t.string 'length'
   #  	t.string 'difficulty'
   #  	t.string 'ideal_flow'
   #  	t.string 'hazards'
   #  	t.string 'highlights'
   #  	t.string 'nearest_town'
   #  	t.text 'description'
   #  	t.text 'link'
   #  	t.text 'environmental_ed'
   #  	t.text 'on_river_special_concerns'
   #  	t.text 'shuttle_directions'
   #  	t.text 'camping_locations'
   #  	t.text 'local_contacts'
   #  	t.text 'emergency_plan'
   #  	t.text 'nearest_store'
   #  	t.text 'map'
   #  	t.timestamps
   #  end 