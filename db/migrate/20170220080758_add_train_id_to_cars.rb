class AddTrainIdToCars < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :cars, :train, index: true
  end
end
