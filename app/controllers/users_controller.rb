class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @trees = @user.trees
  end

  def my_profile
    @user = current_user
    @trees = @user.trees
    @adoptions = @user.adoptions
  end
end
