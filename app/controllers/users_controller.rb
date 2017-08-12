class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :go_on_ride]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    redirect_to root_path if session[:user_id].nil?
  end

  def edit
  end

  def index
    @users = User.all
  end

  def go_on_ride
    @attraction = Attraction.find(params[:format])
    @user.decrease_ticket_count(@attraction.tickets)
    @user.update_mood
    @user.save
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
  end

end
