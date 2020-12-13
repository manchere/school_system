class UsersController < ApplicationController

  skip_before_action :authorized, only: [:login, :logout, :index, :new, :create, :show]
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
      session[:modal] = true
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def user_params
    params.require(:user).permit(:username, :firstname, :surname, :password, :email, :country)
  end
end
