class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions, id: :uuid do |t|
      t.string :stripe_user_id
      t.boolean :active, null: false, default: false
      t.uuid :user_id, null: false

      t.timestamps
    end
      add_index :subscriptions, :user_id, unique: true
  end
  
end
