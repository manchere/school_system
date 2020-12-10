class RemoveNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :firstname
    remove_column :users, :surname
  end
end
