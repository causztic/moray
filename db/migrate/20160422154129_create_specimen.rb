class CreateSpecimen < ActiveRecord::Migration
  def change
    create_table :specimen do |t|
      t.integer :age
      t.float :length
      t.float :weight
      t.string :sex
      t.string :maturity
      t.integer :catch_id

      t.timestamps null: false
    end
  end
end
