class CreateRivers < ActiveRecord::Migration

  def up
    change_table :rivers do |t|

    end
  end

  def down
  	drop_table 'trips'
  end 

end
