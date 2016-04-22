class AddStartDateAndEndDateToOperations < ActiveRecord::Migration
  def change
    add_column :operations, :start_date, :date
    add_column :operations, :end_date, :date
  end
end
