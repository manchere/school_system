class RemoveEmailAddressFromStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :email_address
  end
end
