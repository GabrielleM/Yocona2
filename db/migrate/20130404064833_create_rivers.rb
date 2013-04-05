class CreateRivers < ActiveRecord::Migration

  def up
    create_table :rivers do |t|
    	t.string 'name'
    	t.string 'length'
    	t.string 'difficulty'
    	t.string 'ideal_flow'
    	t.string 'hazards'
    	t.string 'highlights'
    	t.string 'nearest_town'
    	t.text 'description'
    	t.text 'link'
    	t.text 'environmental_ed'
    	t.text 'on_river_special_concerns'
    	t.text 'shuttle_directions'
    	t.text 'camping_locations'
    	t.text 'local_contacts'
    	t.text 'emergency_plan'
    	t.text 'nearest_store'
    	t.text 'map'
    	t.timestamps
    end
  end

  def down
  	drop_table 'trips'
  end 

end
