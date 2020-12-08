# == Schema Information
#
# Table name: classroom_students
#
#  id           :uuid             not null, primary key
#  date_from    :date
#  date_to      :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  classroom_id :uuid             not null
#  student_id   :uuid             not null
#
# Indexes
#
#  index_classroom_students_on_classroom_id  (classroom_id) UNIQUE
#  index_classroom_students_on_student_id    (student_id) UNIQUE
#
class CoursesStudent < ApplicationRecord
  belongs_to :student
  belongs_to :course
end
