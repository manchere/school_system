class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students, id: :uuid do |t|
      t.uuid :classroom_id, null: false
      t.string :firstname
      t.string :surname
      t.date :DOB
      t.date :admission_date
      t.text :address
      t.string :nationality

      t.timestamps
    end
      add_index :students, :classroom_id, unique: true
  end
end
