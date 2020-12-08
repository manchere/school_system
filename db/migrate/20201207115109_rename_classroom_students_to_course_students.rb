class RenameClassroomStudentsToCourseStudents < ActiveRecord::Migration[6.0]
  def change
    rename_table :classroom_students, :course_students
  end
end
