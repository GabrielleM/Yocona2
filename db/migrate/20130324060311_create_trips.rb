class CreateTrips < ActiveRecord::Migration

  def up

    end
  end

  def down
  	drop_table 'trips'
  end 

end
