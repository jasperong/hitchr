FactoryGirl.define do

  factory :booking do
    seats { rand(1..4) }
    # we need a function to deal with seats available and seats booked
  end

end
