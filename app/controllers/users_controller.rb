class UsersController < ApplicationController

  def create
    @user = User.create user_params
    respond_with @user
  end

  def user_params
    params.permit :name
  end
end
