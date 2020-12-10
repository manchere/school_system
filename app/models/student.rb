# == Schema Information
#
# Table name: students
#
#  id             :uuid             not null, primary key
#  DOB            :date
#  address        :text
#  admission_date :date
#  email_address  :string
#  firstname      :string
#  gender         :string
#  nationality    :string
#  surname        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  course_id      :uuid             not null
#
# Indexes
#
#  index_students_on_course_id  (course_id) UNIQUE
#
class Student < ApplicationRecord
  #Relationships
  has_many :courses, through: :course_students
  has_many :fees
  belongs_to :user

  #Validations
  validates :firstname, presence: true
  validates :surname, presence: true
  validates :nationality, presence: true
  validates :DOB, presence: true
  validates :admission_date, presence: true
  validates :gender, presence: true

  #Attributes
  GENDERS = %w(male female undefined)
end
