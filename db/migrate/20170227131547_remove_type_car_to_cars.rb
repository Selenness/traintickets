class RemoveTypeCarToCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :car_type
  end
end
