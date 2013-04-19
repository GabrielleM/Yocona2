# MH 3/24/13 -- Define all columns for Trip table 

class AddColumnsToTrip < ActiveRecord::Migration
  def change
  	add_column :trips, :leader, :string
  	add_column :trips, :agency, :string
  	add_column :trips, :agency_contact, :string
  	add_column :trips, :num_participants, :string
  	add_column :trips, :num_guides, :string
  	add_column :trips,:report_link, :string
  	add_column :trips, :flow, :string
  	add_column :trips, :start_date, :datetime
  	add_column :trips, :duration, :integer
  	add_column :trips, :summary, :text
  	add_column :trips, :pictures, :text
  	add_column :trips, :river_id, :integer #foreign key
  end
end

  	# change_table :trips do |t|
   #  	t.string 'leader'
   #  	t.string 'agency'
   #  	t.string 'agency_contact'
   #  	t.datetime	'start_date'
   #  	t.integer 'duration'
   #  	t.string 'flow'
   #  	t.string 'num_participants'
   #  	t.string 'num_guides'
   #  	t.string 'report_link'
   #  	t.text 'summary'
   #  	t.text 'pictures'
   #  	t.references 'rivers' #foreign key 
   #  	t.timestamps