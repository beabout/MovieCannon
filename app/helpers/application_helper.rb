module ApplicationHelper
  def image_rating(film)
    image_tag 'G.jpg' if film.mpaa_rating == "G"
    image_tag 'PG.png' if film.mpaa_rating == "PG"
    image_tag 'PG13.png' if film.mpaa_rating == "PG13"
    image_tag 'R.png' if film.mpaa_rating == "R"
  end
end
