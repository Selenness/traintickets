class RemoveTypeFromCar < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :type
  end
end
