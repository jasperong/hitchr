require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = build(:user)
  end

  test "should be invalid without an email" do
    @user.email = nil

    assert_nil @user.email # AY: added presence validation in model

    assert_equal false, @user.valid?
  end


end
