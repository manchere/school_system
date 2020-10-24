class CreateClassroomStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :classroom_students, id: :uuid do |t|
      t.uuid :classroom_id, null: false
      t.uuid :student_id, null: false
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
    add_index :classroom_students, :classroom_id, unique: true
    add_index :classroom_students, :student_id, unique: true
  end
end
