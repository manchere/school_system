class RenameClassoomTypeToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :classrooms, :type, :category
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end