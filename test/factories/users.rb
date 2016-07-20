FactoryGirl.define do
  factory :user do

    sequence(:email) { |n| "person#{n}@example.com" } # we can use Faker gem here

    first_name { %w(Althea David Hira).sample }
    last_name { %w(Yi Cisneros Kazmi).sample }
    gender { %w(male female).sample }
    date_of_birth {Date.today}
    reliability {rand()}
    password { "123456" }
    password_confirmation { "123456" }
  end
end
