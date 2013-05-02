class AddCarrierwaveColsToRivers < ActiveRecord::Migration
  def change
  	add_column :rivers, :image, :string
  end
end

