class RemoveEmailAddressFromTeacher < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :email_address
  end
end
