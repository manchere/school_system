# == Schema Information
#
# Table name: teachers
#
#  id                 :uuid             not null, primary key
#  DOB                :date
#  contact            :string
#  date_of_employment :date
#  email_address      :string
#  firstname          :string
#  middle_name        :string
#  surname            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  classroom_id       :uuid             not null
#
# Indexes
#
#  index_teachers_on_classroom_id  (classroom_id) UNIQUE
#
class Teacher < ApplicationRecord
  belongs_to :classroom
end
