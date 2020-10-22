# == Schema Information
#
# Table name: students
#
#  id             :bigint           not null, primary key
#  DOB            :date
#  address        :text
#  admission_date :date
#  firstname      :string
#  nationality    :string
#  surname        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Student < ApplicationRecord
  belongs_to :classroom

  validates :firstname, presence: true
  validates :surname, presence: true
  validates :nationality, presence: true
  validates :DOB, presence: true
  validates :admission_date, presence: true

end
