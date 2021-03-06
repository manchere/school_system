class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:login, :logout, :index, :new, :create, :show, :create_omniauth]
  def new
    @user = User.new
  end

  def login
    if params[:username_email]
      if user_search && user_search.authenticate(params[:password])
        session[:user_id] = user_search.id
        redirect_to schools_path
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
  end

  def create_omniauth
    @identity = Identity.find_with_omniauth(auth)
      if @identity.nil?
        user = User.find_or_create_user_if_email(auth)
        session[:user_id] = user.id
        redirect_to schools_path 
      else
        session[:user_id] = @identity.user.id  
        redirect_to schools_path
      end
  end

  protected
  def auth
    request.env['omniauth.auth']
  end

  def user_search
    user = User.find_by_email(params[:username_email])
    user.nil? ? user = User.find_by_username(params[:username_email]) : user
  end
end
