class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :license
      t.string :country
      t.string :vessel_name
      t.string :vessel_gear_type
      t.text :vessel_characteristics
      t.string :dealer_company_number
      t.string :dealer_name
      t.string :dealer_address
      t.string :dealer_country

      t.timestamps null: false
    end
  end
end
