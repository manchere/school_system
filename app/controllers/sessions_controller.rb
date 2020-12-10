class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:login, :logout, :index, :new, :create, :show]
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
end