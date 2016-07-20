FactoryGirl.define do
  factory :user do

    sequence(:email) { |n| "person#{n}@example.com" } # we can use Faker gem here

    first_name { %w(Althea David Hira).sample }
    last_name { %w(Yi Cisnero Ky).sample }
    gender { %w(male female).sample }
    date {Date.today}
    reliability {rand()}
  end
end
