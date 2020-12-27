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
  # Relationships
  belongs_to :user

  # Validations
  validates :provider, inclusion: { in: PROVIDERS }
  validates :uid, presence: true, uniqueness: { scope: :provider }

  # def create_from_oauth(auth)
  #   identity.email.blank?
  # end

end

