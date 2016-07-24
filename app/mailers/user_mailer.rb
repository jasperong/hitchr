class UserMailer < ApplicationMailer

  # 1. Setup a welcome email for new users
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Hitchr!")
  end

  # 2. Setup an email for the driver to see when someone requests a seat
  def seat_confirmation(ride)
    @ride = ride
    email = @ride.user.email
    mail(to:email, subject: "Somebody wants to hitch a ride with you on #{@ride.date}
                            from #{@ride.start_location} to #{@ride.end_location}")
  end


  # 3. Setup an email for a rider when a driver rejects a seat request
  def seat_confirmed(ride)
    @ride = ride
    email = booking.user.email
  end

  # 4. Setup an email when a booked seat is cancelled by a rider

  def cancelled_seat(ride)
    @ride = ride

    email = @ride.last.user.email
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
