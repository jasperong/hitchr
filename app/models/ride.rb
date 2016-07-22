class Ride < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validate :correct_time

  def self.search(start_loc, end_loc)
    where("start_location LIKE ?", "%#{start_loc}%").where("end_location LIKE ?", "%#{end_loc}%")
  end

  def correct_time
    if date.past?
      errors.add(:date, "You cannot make a ride in the past")
    else
      return true
    end
  end

end
