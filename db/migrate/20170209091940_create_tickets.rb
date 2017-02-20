class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :first_station, index: true
      t.belongs_to :end_station, index: true
      t.timestamps
    end
  end
end
