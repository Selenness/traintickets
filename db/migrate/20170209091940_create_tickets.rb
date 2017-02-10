class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :tickets, :start_station, index: true
      t.belongs_to :tickets, :end_station, index: true

      t.timestamps
    end
  end
end
