class ReviewsController < ApplicationController
  before_action :find_user

  def new
    @review = Review.new
  end

  def create
    @review = @user.reviews.build(booking_params)
    @review.user = user.id


    if @review.save
      redirect_to root_path
    else
      render :new, alert: "Review failed"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :review)
  end

  def find_user
    @user = User.find(params[:user_id])
  end

end
