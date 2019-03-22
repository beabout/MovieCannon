class HomeController < ApplicationController

  # Basic homepage
  def index
    @films = Film.all
    @mvp = Mvp.new
  end

end
