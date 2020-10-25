class CreateFees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees, id: :uuid do |t|
      t.uuid :student_id
      t.string :fee_title
      t.string :fee_description
      t.money :amount, null: false, default: 0

      t.timestamps
    end
    add_index :fees, :student_id, unique: true
  end
end
