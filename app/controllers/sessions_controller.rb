class SessionsController < ApplicationController

  def new
  end

  def create
    @user = find_user(params[:user])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def find_user(params)
    if params[:name]
      User.find_by(name: params[:name])
    else
      User.find(name: params[:id])
    end
  end

end





