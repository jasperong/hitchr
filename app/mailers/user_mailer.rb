class UserMailer < ApplicationMailer

  # 1. Setup a welcome email for new users
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Hitchr!")
  end

  # 2. Setup an email for the driver to see when someone requests a seat

  # 3. Setup an email for a rider when a driver accepts OR rejects a seat request

  # 4. Setup an email when a booked seat is cancelled by a rider

  def cancelled_seat(ride)
    @ride = ride

    email = @ride.user.email
    mail(to:email, subject: "#{@booking.user.first_name} #{@booking.user.last_name}
                              cancelled their seat(s) for your ride on
                              #{@ride.date} from
                              #{@ride.start_location} to #{@ride.end_location}")
  end

  # 5. Setup an email when a ride is cancelled by a driver

  def cancelled_ride(ride)
    @ride = ride

    @ride.bookings.each do |booking|
      email = booking.user.email
      mail(to: email, subject: "Your ride from #{ride.start_location} to #{ride.end_location} on #{@ride.date} has been cancelled!")
    end
  end

end
