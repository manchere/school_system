class UsersController < ApplicationController
  
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
      p @user.errors.count
      redirect_to @user, alert: "User created succesfully"
    else
      redirect_to new_user_path, alert: "Error creating user"
    end
  end
 
  def user_params
    params.require(:user).permit(:username, :firstname, :surname, :username, :password_digest, :email)
  end

  def login
    if params[:username]
        user = User.find_by_username(params[:username])
        @valid = user.authenticate(params[:password])
    end     
  end
end
