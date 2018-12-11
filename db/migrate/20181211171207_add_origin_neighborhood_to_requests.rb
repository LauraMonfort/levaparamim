class AddOriginNeighborhoodToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :origin_neighborhood, :string
  end
end
