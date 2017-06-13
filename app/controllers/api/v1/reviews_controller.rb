class Api::V1::ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find_by(params[:id])
    render json: review
  end

  def create
    # byebug
    review = Review.create(review_params)
    render json: review
  end

  private
  def review_params
    params.require(:review).permit(:review, :rating, :farmer_id, :user_id)
  end

end
