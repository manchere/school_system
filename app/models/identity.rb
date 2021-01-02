# == Schema Information
#
# Table name: identities
#
#  id              :uuid             not null, primary key
#  additional_data :jsonb
#  provider        :string           not null
#  uid             :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :uuid
#
# Indexes
#
#  index_identities_on_uid_and_provider  (uid,provider) UNIQUE
#  index_identities_on_user_id           (user_id)
#
class Identity < ApplicationRecord

  #Attributes
  PROVIDERS = %w(facebook google_oauth2)
  # serialize :additional_data, HashSerializer
  #attr_accessor :provider, :uid, :user_id

  # Relationships
  belongs_to :user

  # Validations
  # validates :provider, inclusion: { in: PROVIDERS }
  #validates :uid, presence: true, uniqueness: { scope: :provider }



  def self.find_with_omniauth(auth)
    find_by(uid: auth['uid'], provider: auth['provider'])
  end

  def self.create_with_omniauth(auth)
    create uid: auth['uid'], provider: auth['provider']
  end
 
  def add_provider(user, auth)
    Identity.create user: user, provider: auth['provider'], uid: auth['uid']
  end
end
