# == Schema Information
#
# Table name: schools
#
#  id                     :bigint           not null, primary key
#  school_digital_address :string
#  school_name            :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
