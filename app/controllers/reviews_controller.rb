class ReviewsController < ApplicationController
  before_action :load_film

  def index

  end

  def show
    puts "=" * 100
  end

  def new
    @review = Review.new(user_id: current_user.id, film_id: @film.id)
    puts "=" * 100
    puts @review.inspect
  end

  def edit
    @review = @film.reviews.find(params[:id])
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

  def destroy
    @review = Review.find(params[:id])
    puts "=" * 100
    @review.inspect
    @review.destroy
    redirect_to film_path(@film)
  end

  def update
    puts "=" * 100
    @review = Review.find(params[:id])
    @review.update!(review_params)
  end

  def review_params
    params.require(:review).permit(:description,:user_id,:film_id)
    # params[:review].permit(:user_id, :film_id, :description)
  end


  private

  def load_film
    @film = Film.find(params[:film_id])
  end


end
