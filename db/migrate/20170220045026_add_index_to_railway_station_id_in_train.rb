class AddIndexToRailwayStationIdInTrain < ActiveRecord::Migration[5.0]
  def change
    add_index :trains, :railway_station_id
  end
end
