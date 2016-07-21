require 'test_helper'

class RideTest < ActiveSupport::TestCase

  setup do

    @ride = build(:ride)
  end

  test "should only be valid if ride date is in future" do
    @ride.time > Time.now
    assert_equal true, @ride.valid?
  end

  test "should only be invalid if ride date is in past" do
    @ride.time < Time.now
    assert_equal true, @ride.valid?
  end

  

end
