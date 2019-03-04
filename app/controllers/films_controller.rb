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
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    @film.update(film_params)
    if @film.save
      redirect_to film_path
    else
      render :edit
    end
  end

  # Create new film
  def new

  end

  def film_params
    params.require(:film).permit(:title, :description, :release_date, :run_time, :mpaa_rating ,:filmshot, :movie_poster, :trailer_url)
  end

end
