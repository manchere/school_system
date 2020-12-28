class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:login, :logout, :index, :new, :create, :show, :omniauth]
  def new
    @user = User.new
  end

  def login
    if params[:email]
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/schools'
      else
        @message = 'Login or password incrorrect.'
      end  
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_page_path
  end

  def new_admin
    @user = User.find(params[:id])
    @user.admin
    @user = user.admin
  end

  # def omniauth
  #   User.find_create_or_omniauth(auth)
  #   if user.valid?
  #     session[:user_id] = user.id
  #     redirect_to schools_path
  #   else
  #     redirect_to login_page_path
  #   end
  # end
  def omniauth(auth)
    user = User.create_from_omniauth(auth)
    if user.valid?
      session[:user_id] = user.id
      redirect_to schools_path
    else
      # flash[:message] = user.errors.full_messages.join(", ")
      # redirect_to forgot_path
    end
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end
