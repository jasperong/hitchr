class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.find(ride_params)

    if @ride.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to root_path
  end

  private
  def ride_params
    params.require(:ride).permit(:date, :time, :seats_available, :comments, :start_location, :end_location)
  end

end
