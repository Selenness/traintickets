class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :station, foreign_key: true
      t.references :train, foreign_key: true
      t.time :arrival_time
      t.time :departure_time

      t.timestamps
    end
  end
end
