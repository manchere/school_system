# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  email           :string
#  firstname       :string
#  is_admin        :boolean          default(FALSE), not null
#  password_digest :string
#  reset           :string
#  surname         :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email)
#  index_users_on_is_admin  (is_admin)
#
class User < ApplicationRecord
  has_secure_password

  validates :password_digest, presence: true
  validates :username , :email, uniqueness: true
  validates_confirmation_of :password, message: "should match confirmation"
end
