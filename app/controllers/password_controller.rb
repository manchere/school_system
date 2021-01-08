class PasswordController < ApplicationController

  skip_before_action :authorized, only: [:forgot]

  def forgot
    if params[:email]
      user = User.find_by_email(params[:email]) or not_found()
      if user
        token = SecureRandom.hex(10)
        user.reset = token
        user.save
        ResetMailer.with(user: user).reset_password
      end
      render plain: 'A link to reset the password has been sent to the email ' + user.email
    end
  end

  def reset
    token = request.query_parameters['token'] or params[:token] or not_found()
    @user = User.find_by_reset(token) or not_found
    if params[:password]
      @user.password = params[:password]
      @user.save
      render plain: 'Password successfully reset'
    end
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
