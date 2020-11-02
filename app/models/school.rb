# == Schema Information
#
# Table name: schools
#
#  id              :uuid             not null, primary key
#  digital_address :string
#  school_name     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class School < ApplicationRecord
  has_many :classrooms
end
