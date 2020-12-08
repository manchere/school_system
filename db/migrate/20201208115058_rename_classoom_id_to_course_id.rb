class RenameClassoomIdToCourseId < ActiveRecord::Migration[6.0]
  def change
    rename_column :course_students, :classroom_id, :course_id
    rename_column :students, :classroom_id, :course_id
    rename_column :subjects, :classroom_id, :course_id
    rename_column :teachers, :classroom_id, :course_id
  end
end
