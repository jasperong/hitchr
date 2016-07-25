class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
      if @user = login(params[:email], params[:password])
        @user = current_user
        redirect_back_or_to(rides_path, alert: 'Login successful')
      else
        flash.now[:alert] = 'Login failed'
        render action: 'new'
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "Logged out!"
    end

end
