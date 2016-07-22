class Ride < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  validates :correct_time, presence: true


  def correct_time
    if date.past?
      errors.add(:date, "Cannot make rides in the past")
    else
      return true
    end
  end

end
