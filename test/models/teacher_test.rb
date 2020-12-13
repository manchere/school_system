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
require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
