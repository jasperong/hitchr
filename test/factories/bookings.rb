FactoryGirl.define do

  factory :booking do

    # We need a function to deal with seats available and seats booked - AY
    seats { rand(1..4) }
  end

end
