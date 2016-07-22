require 'ffaker'

FactoryGirl.define do
  factory :ride do

    date { Time.now }
    time { Time.now }
    seats_available { rand(1..4)}
    comments { FFaker::LoremFR.phrase }
    start_location { %w(Toronto Montreal Ottawa).sample } # eventually generate a city that isn't an end location / vice-versa
    end_location{ %w(Kingston Halifax Quebec).sample }
  end

end
