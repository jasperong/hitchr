class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
      if @user = login(params[:email], params[:password])
        @user = current_user
        redirect_back_or_to(root_path, alert: "Welcome back to Hitchr, #{@user.first_name}!")
      else
        flash[:error] = 'Oops! Password or email seems to be incorrect. Please try logging in again.'
        render :new
       end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "Thanks for visiting Hitchr! See you next time."
    end

end
