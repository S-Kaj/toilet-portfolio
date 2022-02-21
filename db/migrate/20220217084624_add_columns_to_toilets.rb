class AddColumnsToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :latitude, :float, null: false
    add_column :toilets, :longtitude, :float, null: false
  end
end
