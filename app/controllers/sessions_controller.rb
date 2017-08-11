class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:new]

  def new
  end

  def create
    binding.pry
    @user = User.find(params[:user][:id])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
  end
end




