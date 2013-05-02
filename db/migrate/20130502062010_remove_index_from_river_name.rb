class RemoveIndexFromRiverName < ActiveRecord::Migration
  def change
  	remove_index :rivers, :name 
  end

end
