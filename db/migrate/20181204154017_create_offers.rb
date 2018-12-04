class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.datetime :delivery_date_time
      t.string :origin
      t.string :destination
      t.string :size
      t.integer :price
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
