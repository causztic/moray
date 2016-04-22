class AddFishTicketsToCatches < ActiveRecord::Migration
  def change
    add_column :catches, :fish_ticket_type, :string
    add_column :catches, :fish_ticket_number, :string
  end
end
