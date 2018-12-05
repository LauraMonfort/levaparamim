class AddImageToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :image, :string
  end
end
