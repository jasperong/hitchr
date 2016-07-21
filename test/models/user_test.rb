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

  test "should be invalid without a password" do
    @user.password = nil
    assert_nil @user.password
    assert_equal false, @user.valid?
  end

  test "should be invalid without password confirmation" do
    @user.password_confirmation = nil
    assert_nil @user.password_confirmation
    assert_equal false, @user.valid?
  end

  test "should be invalid without first_name" do
    @user.first_name = nil
    assert_nil @user.first_name
    assert_equal false, @user.valid?
  end

  test "should be invalid without last_name" do
    @user.last_name = nil
    assert_nil @user.last_name
    assert_equal false, @user.valid?
  end

  test "should be invalid without gender" do
    @user.gender = nil
    assert_nil @user.gender
    assert_equal false, @user.valid?
  end

  test "should be invalid without birthday" do
    @user.date_of_birth = nil
    assert_nil @user.date_of_birth
    assert_equal false, @user.valid?
  end
  
end
