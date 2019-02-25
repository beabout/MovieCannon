class ReviewsController < ApplicationController
  def index

  end

  def show

  end

  def edit

  end

  def new
    @film = Film.find(params[:film_id])
    @review = Review.new(user: current_user, film: @film)
  end

  def create
    # @review = Review.create(params[:review].merge({ user: current_user, film: @film }))
    @review = Review.create(review_params)
    # @review = Review.create(user_id: params[:user_id], film_id: params[:film_id], description: params[:x])
    # @review = Review.create(params[:review])
  end

  def delete

  end

  def review_params
    params.require(:review).permit(:description,:user_id,:film_id)
  end

end
