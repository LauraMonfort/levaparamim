class AddBookedToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :booked, :boolean, :default => false
  end
end
