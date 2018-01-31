class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index,:show,:create]


  def index
    @users = User.all
  end

  def show
    @user = current_user
  end
end
