# MH 3/24/13 -- Allow rivers to be indexed by unique name, for easy access from trips

class AddIndexToRiverName < ActiveRecord::Migration
  def change
  	add_index :rivers, :name, :unique => true
  end
end
