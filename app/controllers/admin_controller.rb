class AdminController < ApplicationController
  before_action :check_for_admin
  def check_for_admin
    @admin  = current_user.admin
    if current_user.nil? || !current_user.admin?
      redirect_to root_path, alert: "You must be an admin to access this path"
    end
  end
end
