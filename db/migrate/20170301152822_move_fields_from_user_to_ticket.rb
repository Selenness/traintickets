class MoveFieldsFromUserToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :name, :text
    add_column :tickets, :passport, :text
    remove_column :users, :name
    remove_column :users, :passport
  end
end
