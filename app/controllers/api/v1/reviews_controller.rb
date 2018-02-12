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
    review = Review.new(review_params)
    user = User.find(params[:review][:user_id])
    thumbnail = user.picture
    review.user_thumbnail = thumbnail
    review.save
    render json: review
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
    render json: review
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    reviews = Review.all
    render json: reviews
  end

  private
  def review_params
    params.require(:review).permit(:review, :rating, :farmer_id, :user_id)
  end

end
