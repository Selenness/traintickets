class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :train
  belongs_to :first_station, class_name: RailwayStation, foreign_key: :first_station
  belongs_to :end_station, class_name: RailwayStation, foreign_key: :end_station
end