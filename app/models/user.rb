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
  has_many :identites

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

  def self.find_or_create_user_if_email(auth)
    unless user = User.find_by(email: auth['info']['email'])
      user = create! username: auth['info']['name'].parameterize, email: auth['info']['email'].to_s.downcase, password_digest: SecureRandom.hex(16) if auth['info']['email'].to_s.present?
    end
     Identity.create user: user, provider: auth['provider'], uid: auth['uid']    
    user
  end

    def self.add_provider(user, auth)
    Identity.create user: user, provider: auth['provider'], uid: auth['uid']
    end
  
end
