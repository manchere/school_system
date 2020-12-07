class CreateClassroomStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :classroom_students, id: :uuid do |t|
      t.uuid :course_id, null: false
      t.uuid :student_id, null: false
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
    add_index :course_students, :course_id, unique: true
    add_index :course_students, :student_id, unique: true
  end
end
