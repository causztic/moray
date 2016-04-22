class AddLatLngToOperation < ActiveRecord::Migration
  def change
    add_column :operations, :latitude, :float
    add_column :operations, :longitude, :float
  end
end
