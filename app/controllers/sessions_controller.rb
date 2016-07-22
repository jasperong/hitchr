class SessionsController < ApplicationController

		def new
		end

		def create
			if @user = login(params[:email], params[:password])
				redirect_back_or_to(rides_path, alert: 'Login successful')
			else
				flash.now[:alert] = 'Login failed'
				render action: 'new'
			end
		end

		def destroy
		end

end
