# == Schema Information
#
# Table name: classroom_students
#
#  id         :bigint           not null, primary key
#  date_from  :date
#  date_to    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ClassroomStudent < ApplicationRecord
  belongs_to :student
  belongs_to :classroom
end
