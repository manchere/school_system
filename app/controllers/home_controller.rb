# frozen_string_literal: true

class HomeController < ApplicationController # rubocop:todo Style/Documentation
  def index
    p params
  end

  def login
    if params['username'] # rubocop:todo Style/GuardClause
      user = User.find_by_username(params[:username])
      @valid = user.authenticate(params[:password])
    end
  end
end
