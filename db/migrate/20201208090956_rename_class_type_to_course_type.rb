class RenameClassTypeToCourseType < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :class_type, :course_type
  end
end
