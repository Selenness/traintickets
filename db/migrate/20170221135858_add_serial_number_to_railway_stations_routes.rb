class AddSerialNumberToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :serial_number, :integer
  end
end
