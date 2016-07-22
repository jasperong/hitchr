class Ride < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  has_many :reviews

  def self.search(start_loc, end_loc)
    where("start_location LIKE ?", "%#{start_loc}%").where("end_location LIKE ?", "%#{end_loc}%")
  end

end
