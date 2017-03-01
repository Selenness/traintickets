class RenameFieldsInTicket < ActiveRecord::Migration[5.0]
  def change
    rename_column :tickets, :name, :user_name
    rename_column :tickets, :passport, :user_passport
  end
end
