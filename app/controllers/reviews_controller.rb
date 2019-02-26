class ReviewsController < ApplicationController
  def index

  end

  def show

  end

  def edit

  end

  def new
    @film = Film.find(params[:film_id])
    @review = Review.new(user_id: current_user.id, film_id: @film.id)
    puts "=" * 100
    puts @review.inspect
  end

  def create
    puts "=" * 100
    puts @review.inspect
    @review = Review.create!(review_params)
    # render plain: params[:review].inspect
    # @review = Review.create(params[:review].merge({ user: current_user, film: @film }))
    # @review = Review.create(user_id: params[:user_id], film_id: params[:film_id], description: params[:x])
    # @review = Review.create(params[:review])
  end

  def delete

  end

  def review_params
    params.require(:review).permit(:description,:user_id,:film_id)
    # params[:review].permit(:user_id, :film_id, :description)
  end


end
