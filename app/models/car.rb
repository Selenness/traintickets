class Car < ApplicationRecord
  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: true


  before_validation :set_number

  default_scope { order(:number) }

  scope :economy, -> { where(type: 'EconomyCar') }
  scope :coupe, -> { where(type: 'CoupeCar') }
  scope :s_v, -> { where(type: 'SVCar') }
  scope :seated, -> { where(type: 'SeatedCar') }
  scope :ordered, -> { order(:number) }

  private

  def set_number
    self.number = self.train.cars.length + 1
  end
end
