class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :requests, :delivery_date_time, :delivery_date
  end
end
