class UserMailer < ApplicationMailer

  # 1. Setup a welcome email for new users
  def welcome
    @user = 
    mail(to: @user.email, subject: "Welcome to Hitchr!")
  end
end

  # 2. Setup an email for the driver to see when someone requests a seat

  # 3. Setup an email for a rider when a driver accepts OR rejects a seat request

  # 4. Setup an email when a booked seat is cancelled by a rider

  # 5. Setup an email when a ride is cancelled by a driver
