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
require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
