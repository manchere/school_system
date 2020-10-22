# == Schema Information
#
# Table name: teachers
#
#  id                 :bigint           not null, primary key
#  DOB                :date
#  contact            :string
#  date_of_employment :date
#  email_address      :string
#  firstname          :string
#  middle_name        :string
#  surname            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
