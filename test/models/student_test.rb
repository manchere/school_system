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
#  nationality    :string
#  surname        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  classroom_id   :uuid             not null
#
# Indexes
#
#  index_students_on_classroom_id  (classroom_id) UNIQUE
#
require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
