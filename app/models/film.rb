class Film < ApplicationRecord
  has_and_belongs_to_many :people
  has_one_attached :trailer_url
  has_one_attached :movie_poster
  has_one_attached :filmshot
  has_many :genres

  validates_presence_of :title

  def format_runtime
    if run_time > 60
      minutes = (run_time % 60).floor
      hours = (run_time / 60).floor
      "#{hours}#{"hr".pluralize(hours)} #{minutes}min"
    end
  end

  def print_rating(film)
    image_tag 'G.jpg' if film.mpaa_rating == "G"
    image_tag 'PG.png' if film.mpaa_rating == "PG"
    image_tag 'PG13.png' if film.mpaa_rating == "PG13"
    image_tag 'R.png' if film.mpaa_rating == "R"
  end

  def year
    release_date.strftime("%Y")
  end

  def format_releasedate
    release_date.strftime("%B %d, %Y")
  end

end
