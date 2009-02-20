class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
  end

end
