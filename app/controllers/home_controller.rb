class HomeController < ApplicationController
  def index
    # render('index')
    redirect_to controller: 'home', action: 'index'
  end

  def show
    # render('home/show')
    redirect_to(controller: 'home', action: 'index')
  end
end

def login
  @plural = [2, 3, 4, 5, 6, 7, 8, 9]
  # render 'new'
end
