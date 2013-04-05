class AddIndexToRiverName < ActiveRecord::Migration
  def change
  	add_index :rivers, :name, :unique => true
  end
end
