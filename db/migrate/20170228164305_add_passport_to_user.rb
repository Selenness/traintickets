class AddPassportToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :passport, :text
  end
end
