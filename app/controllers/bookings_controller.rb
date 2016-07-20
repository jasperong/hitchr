class BookingsController < ApplicationController
  before_action :load_ride

  def show
    @booking = Booking.find(params[id])
  end

  def create
    @booking = @ride.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to root_path, alert: "Booking created successfully"
    else
      render "rides/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit()
  end

  def load_ride
    @ride = Ride.find(params[:ride_id])
  end

end
