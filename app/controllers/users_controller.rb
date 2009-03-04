class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
    if @user.role == "Developer"
      @title = "Introduction - Developers"
    elsif @user.role == "Customer"
        @title = "Introduction - Customers"  
    else    
      @title = "Introduction - Managers"
    end
  end

end
