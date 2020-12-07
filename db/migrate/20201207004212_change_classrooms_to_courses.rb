class ChangeClassroomsToCourses < ActiveRecord::Migration[6.0]
  def change
    rename_table :classrooms, :courses
  end
end
