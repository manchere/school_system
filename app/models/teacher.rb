# == Schema Information
#
# Table name: teachers
#
#  id                 :uuid             not null, primary key
#  DOB                :date
#  contact            :string
#  date_of_employment :date
#  firstname          :string
#  middle_name        :string
#  surname            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  course_id          :uuid             not null
#
# Indexes
#
#  index_teachers_on_course_id  (course_id) UNIQUE
#
class Teacher < ApplicationRecord
  #Relationships
  belongs_to :course
  belongs_to :user
  has_one_attached :profile_image

  #Validations
  validates :firstname, :surname, presence: true
end
