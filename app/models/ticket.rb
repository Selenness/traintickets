class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :train
  belongs_to :first_station, class_name: RailwayStation, foreign_key: :first_station_id
  belongs_to :end_station, class_name: RailwayStation, foreign_key: :end_station_id

  after_create :send_notification_buy
  after_destroy :send_notification_delete

  def route_name
    "#{first_station.name} - #{end_station.name}"
  end

  private

  def send_notification_buy
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_notification_delete
    TicketsMailer.delete_ticket(self.user, self).deliver_now
  end
end
