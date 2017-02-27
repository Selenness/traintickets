class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :cars

  def seats_count(car_type, seats_type)
    self.cars.where(car_type: car_type).select("sum(#{seats_type}) as total").first.total
  end

end
