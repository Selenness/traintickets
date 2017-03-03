class AddSeatedSeatsToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :seated_seats, :integer
  end
end
