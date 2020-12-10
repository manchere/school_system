class RenameStudentIdToSubscriptionId < ActiveRecord::Migration[6.0]
  def change
    # rename_column :fees, :student_id, :subscription_id
    change_column :fees, :subscription_id, :uuid, column_options: { null: false }
  end
end
