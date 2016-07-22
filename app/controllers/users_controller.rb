class UsersController < ApplicationController
  # before_action :require_login, only: :show


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @rides = @user.rides.all
    #FIX THIS BELOW TO SHOW ALL REVIEWS FOR USER
    #@reviews = @user.rides.all.reviews

    #FIX THIS BELOW TO SHOW ALL My Bookings
    #and The bookings made for my ride offered
    @reviews = @user.reviews
    @bookings = []
    @user.rides.all.each do |ride|
      @bookings = ride.bookings.all
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, alert: "Signed up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :date_of_birth, :reliability, :avatar)
  end

end
