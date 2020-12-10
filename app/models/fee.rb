# == Schema Information
#
# Table name: fees
#
#  id              :uuid             not null, primary key
#  amount          :money            default(0.0), not null
#  fee_description :string
#  fee_title       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  subscription_id :uuid
#
# Indexes
#
#  index_fees_on_subscription_id  (subscription_id) UNIQUE
#
class Fee < ApplicationRecord
	belongs_to :student
end
