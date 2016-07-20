require 'ffaker'

FactoryGirl.define do

  factory :review do
    rating { rand (1..5) }
    review { FFaker::LoremFR.phrase } # we could use the Faker Gem here...
  end

end
