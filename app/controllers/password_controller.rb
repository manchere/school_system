class PasswordController < ApplicationController
  def reset
    token = request.query_parameters['token'] or not_found()
    user = User.find_by_reset(token) or not_found
    if params['password']
      @user.password = params['password']
      @user.save
      render login: 'Password successfully reset'
    end
  end

  def forgot
    if params['email']
      user = User.find_by_email(params[:email]) or not_found()
      if user
        token = SecureRandom.hex(10)
        user.reset = token
        user.save
        render login: user.username
      end
    end
  end

  def not_found
    raise ActionController::RoutingError.new('Not F ound')
  end
end
