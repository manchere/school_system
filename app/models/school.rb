# == Schema Information
#
# Table name: schools
#
#  id              :uuid             not null, primary key
#  digital_address :string
#  school_name     :string
#
class School < ApplicationRecord
  has_many :teachers
end
