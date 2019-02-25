class ReviewsController < ApplicationController
  def index

  end

  def show

  end

  def edit

  end

  def new
    @film = Film.find(params[:film_id])
  end

  def comment_params
    params.require(:review).permit(:title, :id)
  end

end
