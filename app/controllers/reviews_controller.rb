class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def avg
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    sum = Review.where(:restaurant_id => params[:restaurant_id]).sum(:rating)
    count = Review.where(:restaurant_id => params[:restaurant_id]).count(:rating)
    average = sum / count
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
