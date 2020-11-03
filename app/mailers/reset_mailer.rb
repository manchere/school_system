class ResetMailer < ApplicationMailer
  def reset_password
    @user = params[:user]
    @url = password_reset_route + '?token=' + params[:token]
    mail_to(to: @user.email, subject: 'Reset password for School Mgmt')
  end
end
