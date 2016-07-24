class BookingsController < ApplicationController
  before_action :load_ride, except: [:destroy]

  def show
    @booking = @ride.bookings.find(params[:id])
  end

  def create
    @booking = @ride.bookings.build(booking_params)
    @booking.user = current_user
    if @booking.save
      UserMailer.seat_confirmation(@ride).deliver_later
      redirect_to root_path, alert: "Booking created successfully"
    else
      redirect_to rides_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if current_user == @booking.user
      UserMailer.cancelled_seat(@booking).deliver_later
    elsif current_user != @booking.user
      UserMailer.seat_rejected(@booking).deliver_later
    end
    @booking.destroy
    redirect_to user_path(@booking.user)
  end

  private

  def booking_params
    params.require(:booking).permit(:seats)
  end

  def load_ride
    @ride = Ride.find(params[:ride_id])
  end

end
