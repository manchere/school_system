class UsersController < ApplicationController

  skip_before_action :authorized, only: [:login, :logout, :index, :new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User created succesfully"
    else
      redirect_to new_user_path, alert: "Error creating user"
    end
  end
  
  def user_params
    params.require(:user).permit(:username, :firstname, :surname, :password, :email, :country)
  end

  def login
    if params[:email]
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/schools'
      else
        flash.alert = 'Login or password incrorrect.'
        redirect_to login_page_path
      end  
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_page_path
  end

  def new_admin
    @user = User.find(params[:id])
    @user.admin = 
    @user = user.admin
  end
end
