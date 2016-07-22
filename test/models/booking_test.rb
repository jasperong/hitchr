require 'test_helper'

class BookingTest < ActiveSupport::TestCase

  setup do

    @booking = build(:booking)
  end

  test "Should only be valid if seats available are with 1-7 range" do
    @booking.seats = 1
    assert_equal true, @booking.valid?
  end

end
