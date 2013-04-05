class CreateTrips < ActiveRecord::Migration

  def up
    create_table :trips do |t|
    	t.string 'leader'
    	t.string 'agency'
    	t.string 'agency_contact'
    	t.datetime	'start_date'
    	t.integer 'duration'
    	t.string 'flow'
    	t.string 'num_participants'
    	t.string 'num_guides'
    	t.string 'report_link'
    	t.text 'summary'
    	t.text 'pictures'
    	t.references 'rivers' #foreign key 
    	t.timestamps
    end
  end

  def down
  	drop_table 'trips'
  end 

end
