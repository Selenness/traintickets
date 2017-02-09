class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :first_station
      t.string :last_station

      t.timestamps
    end
  end
end
