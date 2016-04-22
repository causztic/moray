class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :water_temperature
      t.float :depth
      t.float :salinity
      t.integer :operation_id

      t.timestamps null: false
    end
  end
end
