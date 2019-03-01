class ReviewsController < ApplicationController
  before_action :load_film

  def index

  end

  def show

  end

  def new
    @review = Review.new(user: current_user, film: @film)
    puts "=" * 100
    puts @review.inspect
  end

  def create
    @review = Review.new(user: current_user, film: @film)
    @review.assign_attributes(review_params)
    if @review.save
      redirect_to(film_path(@film), notice: "Review successfully created.")
    else
      render :new
    end
  end

  def edit
    @review = @film.reviews.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    # @description = params[:description]
    @review.update(review_params)
    if @review.save
      redirect_to film_path(@film)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to(film_path(@film), notice:"Review successfully deleted.")
  end

  def review_params
    params.require(:review).permit(:description)
  end


  private

  def load_film
    @film = Film.find(params[:film_id])
  end


end
