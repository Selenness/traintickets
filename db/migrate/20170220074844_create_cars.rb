class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :type
      t.integer :top_sit
      t.integer :bottom_sit

      t.timestamps
    end
  end
end
