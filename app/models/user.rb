# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  email           :string
#  firstname       :string
#  password_digest :string
#  reset           :string
#  surname         :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email)
#
class User < ApplicationRecord
  has_secure_password

  validates :password_digest, presence: true
  validates :username, :email, uniqueness: { case_sensitive: false } 
  validates :username,
    format: { with: /\A\w\Z+\_+\Z/, message: :username },
    length: { in: 3..32 },
    exclusion: { in: EXCLUDED_USERNAMES, message: :duplicate }
  # validates_confirmation_of :password, message: "should match confirmation"
  
  #Callbacks
  after_create :create_subscription

  #methods
  def create_subscription
  Subscription.create(user_id: id) if subscription.nil?
  end
end

