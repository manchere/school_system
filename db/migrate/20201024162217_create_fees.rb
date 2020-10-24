class CreateFees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees, id: :uuid do |t|
      t.string :fee_title
      t.string :fee_description
      t.monetize :amount
      t.string :currency
    end
  end
  add_index fees:, student_id:, unique: true
end
