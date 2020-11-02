# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  firstname       :string
#  password_digest :string
#  surname         :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_secure_password
  # validates :firstname, presence: true,
  # validates :surname, presence: true,
  # validates :username, presence: true
end
