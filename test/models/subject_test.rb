# == Schema Information
#
# Table name: subjects
#
#  id           :uuid             not null, primary key
#  subject_code :string
#  subject_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  classroom_id :uuid             not null
#
# Indexes
#
#  index_subjects_on_classroom_id  (classroom_id) UNIQUE
#
require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end