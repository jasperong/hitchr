class UsersController < ApplicationController

  # before_action :require_login, only: :show
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @rides = @user.rides
    @reviews = @user.reviews
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.welcome(@user).deliver_later
      session[:user_id] = @user.id
      redirect_to @user, alert: "Thanks for signing up to Hitchr, #{@user.first_name}!"
    else
      redirect_back_or_to(root_path)
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

  def destroy
    @user = User.find(params[:id])
    UserMailer.deleted_user(@user).deliver_later
    @user.destroy
    flash[:success] = "User deleted"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :date_of_birth, :reliability, :avatar, :phone_number)
  end

end
