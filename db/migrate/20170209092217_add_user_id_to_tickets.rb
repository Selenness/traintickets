class AddUserIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :tickets, :user, index: true
  end
end
