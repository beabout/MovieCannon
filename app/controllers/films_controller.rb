class FilmsController < ApplicationController

  # Display active catalog
  def index
    @films = Film.all

  end

  # Display contents (info, Persons, classifications) for a specific film
  def show
    @film = Film.find(params[:id])
    # @reviews =
  end

  # Allow editing of a film's data
  def edit

  end

  # Create new film
  def new

  end

end
