class Booking < ActiveRecord::Base
	belongs_to :ride
	belongs_to :user
	validates :seats, presence: true
	#
	# validate :enough_seats
	#
	# def enough_seats
	#   @ride = Ride.find(params[:user_id])
	#
	#   arr = []
	#   @ride.bookings.all.each { |booking| arr << booking.seats }
	#   total_seats = arr.inject(:+)
	#   if total_seats > @ride.seats_available
	#     errors.add("Sorry, there are no more seats available.")
	#   end
	# end

end
