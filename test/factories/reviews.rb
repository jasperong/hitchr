FactoryGirl.define do

  factory :review do
    rating { rand (1..5) }
    review "Great ride!" # we could use the Faker Gem here...
  end

end
