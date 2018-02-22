class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant_reviewed = Restaurant.find(params[:restaurant_id])
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = @restaurant_reviewed
    @review.save
    redirect_to(restaurant_path(@restaurant_reviewed))
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
