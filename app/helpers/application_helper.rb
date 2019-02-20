module ApplicationHelper

  def image_rating(film)
    if film.mpaa_rating == "G" then image_tag 'G.jpg', {height: 24}
    elsif film.mpaa_rating == "PG" then image_tag 'PG.png', {height: 24}
    elsif film.mpaa_rating == "PG13" then image_tag 'PG13.png', {height: 24}
    elsif film.mpaa_rating == "R" then image_tag 'R.png', {height: 24}
    end
  end
end
