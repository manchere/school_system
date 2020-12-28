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
  serialize :additional_data, HashSerializer
  attr_accessor :provider, :uid, :user_id
  # Relationships
  belongs_to :user

  # Validations
  validates :provider, inclusion: { in: PROVIDERS }
  validates :uid, presence: true, uniqueness: { scope: :provider }

  def find_by_oauth(auth)
    identity = find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |identity|
      identity.additional_data = auth['info']
      identity.user_id = current_user ? current_user.id : u = User.create_user_for_oauth(identity)
  end
end

