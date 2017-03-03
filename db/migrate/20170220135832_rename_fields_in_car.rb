class RenameFieldsInCar < ActiveRecord::Migration[5.0]
  def change
    rename_column :cars, :type, :car_type
    rename_column :cars, :top_sit, :top_seats
    rename_column :cars, :bottom_sit, :bottom_seats
  end
end
