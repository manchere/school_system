# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  country         :string
#  email           :string
#  password_digest :string
#  reset           :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email)
#
class User < ApplicationRecord

  #Attributes
  EXCLUDED_USERNAMES = %w(www ftp mail root admin account beta staging stage cdn assets images files )

  #Relationships
  has_secure_password
  has_one :subscription
  has_one :admin, dependent: :destroy
  has_one :teacher
  has_one :student

  #Validations
   validates :password_digest, presence: true
   validates :username, :email, presence: true
   validates :username, :email, uniqueness: { case_sensitive: false }
   
  #  validates :username,
    #  format: { with: /\A[a-zA-Z0-9\-\_]+\z/, message: :username },
    #  length: { in: 3..32 }
    # exclusion: { in: EXCLUDED_USERNAMES, message: :duplicate }
  # validates_confirmation_of :password, message: "should match confirmation"
  
  #Callbacks
  after_create :create_subscription

  #methodsr
  def create_subscription
    Subscription.create(user_id: id) if subscription.nil?
  end
end
