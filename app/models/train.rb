class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :cars

  def seats_count(seats_type, car_type = nil)
    scp = self.cars
    scp = scp.where(type: car_type) if car_type.present?
    scp.sum(seats_type)
  end
end
