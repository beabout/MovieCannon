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
    @film = Film.new
  end

  def create
    @film = Film.new
    @film.assign_attributes(film_params)
    if @film.save
      redirect_to(films_path, notice: "Film Successfully added to Catalog.")
    else
      render :new
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to(films_path, notice: "Film successfully deleted.")
  end

  def film_params
    params.require(:film).permit(:title, :description, :release_date, :run_time, :mpaa_rating ,:filmshot, :movie_poster, :trailer_url, genre_ids: [], film_people_attributes: [:id, :person_type_id, :_destroy, :person_id, person_attributes: [:id, :name, :birthdate]], film_classifications_attributes: [:id, :classification_id, :value, :_destroy, classification_attributes: [:id, :name]])
  end

end
