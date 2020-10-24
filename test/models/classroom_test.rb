# == Schema Information
#
# Table name: classrooms
#
#  id         :uuid             not null, primary key
#  class_name :string
#  class_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  school_id  :uuid             not null
#
# Indexes
#
#  index_classrooms_on_school_id  (school_id) UNIQUE
#
require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
