class HomeController < ApplicationController

  # Basic homepage
  def index
    @films = Film.all
  end
end
