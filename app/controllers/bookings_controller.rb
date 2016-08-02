class BookingsController < ApplicationController
  before_action :load_ride, except: [:destroy]

  def show
    @booking = @ride.bookings.find(params[:id])
  end

  def create
    @booking = @ride.bookings.build(booking_params)
    @booking.user = current_user

    arr = [0]
    @booking.ride.bookings.each { |booking| arr << booking.seats }
    total_seats = arr.compact.inject(:+)

    if @booking.save && @booking.seats <= total_seats
      UserMailer.seat_confirmation(@ride, @booking).deliver_later
      redirect_to user_path(current_user), alert: "Booking created successfully"
    else
      flash[:error] = @booking.errors.full_messages.to_sentence
      redirect_to ride_path(@ride)
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
