class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students, id: :uuid do |t|
      t.uuid :course_id, null: false
      t.string :firstname
      t.string :surname
      t.date :DOB
      t.date :admission_date
      t.text :address
      t.string :nationality

      t.timestamps
    end
      add_index :students, :course_id, unique: true
  end
end
