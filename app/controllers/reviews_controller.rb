class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit]
  # def index
  #   @reviews = View.all
  # end

  # def show
  # end

  def new
    @reqtaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
