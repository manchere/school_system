class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :identities, id: :uuid do |t|
      t.uuid :user_id
      t.string :uid, null: false
      t.string :provider, null: false
      t.jsonb :additional_data, default: '{}'

      t.timestamps null: false
    end
    add_index :identities, :user_id
    add_index :identities, [:uid, :provider], unique: true
  end
end
