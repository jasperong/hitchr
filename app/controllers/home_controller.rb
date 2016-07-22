class HomeController < ApplicationController
  def index
    search
  end

  def search
    if params[:start_location] && params[:end_location]
      @rides = Ride.search(params[:start_location], params[:end_location]).order("created_at DESC")
    else
      render :index
    end
  end

end
