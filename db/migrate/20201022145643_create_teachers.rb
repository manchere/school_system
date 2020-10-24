class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers, id: :uuid do |t|
      t.uuid :classroom_id, null: false
      t.string :firstname
      t.string :middle_name
      t.string :surname
      t.date :DOB
      t.date :date_of_employment
      t.string :contact
      t.string :email_address

      t.timestamps
    end
     add_index :teachers, :classroom_id, unique: true
  end
end
