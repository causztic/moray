class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.string :common_name
      t.string :scientific_name
      t.float :weight
      t.integer :count
      t.integer :operation_id

      t.timestamps null: false
    end
  end
end
