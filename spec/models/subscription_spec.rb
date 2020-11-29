# == Schema Information
#
# Table name: subscriptions
#
#  id             :uuid             not null, primary key
#  active         :boolean          default(FALSE), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  stripe_user_id :string
#  user_id        :uuid             not null
#
# Indexes
#
#  index_subscriptions_on_user_id  (user_id) UNIQUE
#
require 'rails_helper'

RSpec.describe Subscription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
