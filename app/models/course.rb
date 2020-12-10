# == Schema Information
#
# Table name: courses
#
#  id          :uuid             not null, primary key
#  course_name :string
#  course_type :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  school_id   :uuid             not null
#
# Indexes
#
#  index_courses_on_school_id  (school_id) UNIQUE
#
class Course < ApplicationRecord
  has_many :students, through: :course_students
  belongs_to :school
  has_many :subjects
end
