# == Schema Information
#
# Table name: admins
#
#  id         :uuid             not null, primary key
#  cell_phone :string
#  user_id    :uuid
#
# Indexes
#
#  index_admins_on_user_id  (user_id)
#
class Admin < ApplicationRecord

    #Reliationships
    belongs_to :user

    #Attributes
    MAX_LOGIN_ATTEMPTS = 5

    private

    def admin?
        current_user && current_user.admin
    end
end
