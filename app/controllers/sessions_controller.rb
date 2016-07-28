class SessionsController < ApplicationController

    def new
      @user = User.new
    end

    def create
      if @user = login(params[:email], params[:password])
        @user = current_user
        redirect_back_or_to(root_path, alert: 'Login successful')
      else
        flash[:error] = 'Login failed'
        redirect_back_or_to(root_path)
       end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "Logged out!"
    end

end
