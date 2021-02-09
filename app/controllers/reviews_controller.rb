class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:show]

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
