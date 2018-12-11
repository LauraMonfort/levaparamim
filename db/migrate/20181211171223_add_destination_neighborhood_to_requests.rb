class AddDestinationNeighborhoodToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :destination_neighborhood, :string
  end
end
