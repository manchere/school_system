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
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'Relationships' do
    it 'is valid with a firstname, lastname, username email and password'
    it 'is invalid without a firstname'
    it 'is invalid without a lastname'
    it 'is invalid without an emailaddress'
    it 'is invalid with a duplicate email address'
  end 
end
