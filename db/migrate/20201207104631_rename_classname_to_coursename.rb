class RenameClassnameToCoursename < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :class_name, :course_name
    # rename_index :courses, 'index_classrooms_on_school_id', 'index_courses_on_school_id'
  end
end
