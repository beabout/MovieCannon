class FilmsController < ApplicationController

  # Display active catalog
  def index
    @films = Film.all
    @q = Film.ransack(params[:q])
    @movies = @q.result(distinct: true)
  end

  # Display contents (info, Persons, classifications) for a specific film
  def show
    @film = Film.find(params[:id])
    # @people = Film.film_people
    # @film_classif = Film.film_classifications
    # @reviews =
  end

  # Allow editing of a film's data
  def edit

  end

  # Create new film
  def new

  end

end
