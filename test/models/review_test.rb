require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  setup do

    @review = build(:review)
  end

  test "should only be invalid if review wasnt inputed" do
    @review.review = nil
    assert_nil @review.review
    assert_equal false, @review.valid?
  end


end
