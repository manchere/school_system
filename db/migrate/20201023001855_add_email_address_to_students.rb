class AddEmailAddressToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :email_address, :string
  end
end
