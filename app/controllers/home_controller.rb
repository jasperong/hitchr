class HomeController < ApplicationController
  def index
    search
  end

  def search
    if params[:start_location] && params[:end_location]
      @rides = Ride.search(params[:start_location], params[:end_location]).order("created_at DESC")
      respond_to do |format|
        format.html { render partial: 'search' }
        format.json { render json: @rides }
      end
    else
      render :index
    end
  end

end
