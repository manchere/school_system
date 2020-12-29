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
  has_one :teacher, dependent: :destroy
  has_one :student, dependent: :destroy
  has_many :identities

  #Validations
  validates :password_digest, presence: true
  validates :username, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
   
  #  validates :username,
    #  format: { with: /\A[a-zA-Z0-9\-\_]+\z/, message: :username },
    #  length: { in: 3..32 }
    # exclusion: { in: EXCLUDED_USERNAMES, message: :duplicate }
  # validates_confirmation_of :password, message: "should match confirmation"
  
  #Callbacks
  after_create :create_subscription

  #methods
  def create_subscription
    Subscription.create(user_id: id) if subscription.nil?
  end
 
  def add_provider(auth)
    unless identities.find_by_provider_and_uid(auth['provider'],auth['uid'])
      Identity.create user: self, provider: auth['provider'], uid: auth['uid']
    end
  end
  
end
