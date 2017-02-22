class AddColumnsToCar < ActiveRecord::Migration[5.0]
  def up
    add_column :cars, :number, :integer
    add_column :cars, :side_top_seats, :integer
    add_column :cars, :side_bottom_seats, :integer
  end

  def down
    remove_column :cars, :number, :integer
    remove_column :cars, :side_top_seats, :integer
    remove_column :cars, :side_bottom_seats, :integer
  end
end
