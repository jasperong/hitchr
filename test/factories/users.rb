require 'ffaker'

FactoryGirl.define do
  factory :user do

    email {FFaker::Internet.email}
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    gender { %w(male female).sample }
    date_of_birth { 20.year.ago }
    reliability {rand()}
    password { "123456" }
    password_confirmation { "123456" }
    phone_number { FFaker::PhoneNumber.short_phone_number }

  end

end
