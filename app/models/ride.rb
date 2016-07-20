class Ride < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_many :reviews
end
