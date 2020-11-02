class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :firstname
      t.string :surname
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
