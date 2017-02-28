class Route < ActiveRecord::Base
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  validates :name, presence: true
  validate :station_count

  before_validation :set_name

  private

  def station_count
    if railway_stations.size < 2
      errors.add(:base, "Нужно минимум две станции")
    end
  end

  def set_name
    self.name = "#{railway_stations.first.name}-#{railway_stations.last.name}"
  end
end