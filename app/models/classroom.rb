# == Schema Information
#
# Table name: classrooms
#
#  id         :bigint           not null, primary key
#  class_name :string
#  class_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Classroom < ApplicationRecord
  has_many :students, through: :classroom_students
end
