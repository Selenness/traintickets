class AddOrderTypeToTrain < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :order_type, :boolean
  end
end
