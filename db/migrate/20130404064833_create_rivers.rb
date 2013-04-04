class CreateRivers < ActiveRecord::Migration
  def change
    create_table :rivers do |t|

      t.timestamps
    end
  end
end
