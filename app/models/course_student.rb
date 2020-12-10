# == Schema Information
#
# Table name: course_students
#
#  id         :uuid             not null, primary key
#  date_from  :date
#  date_to    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :uuid             not null
#  student_id :uuid             not null
#
# Indexes
#
#  index_course_students_on_course_id   (course_id) UNIQUE
#  index_course_students_on_student_id  (student_id) UNIQUE
#
class CourseStudent < ApplicationRecord
  belongs_to :student
  belongs_to :course
end
