module ApplicationHelper

  def image_rating(film,catalog)
    if (film.mpaa_rating == "G" && catalog == true)  then image_tag 'G.jpg', {height: 24}
    elsif (film.mpaa_rating == "PG" && catalog == true) then image_tag 'PG.png', {height: 24}
    elsif (film.mpaa_rating == "PG13" && catalog == true) then image_tag 'PG13.png', {height: 24}
    elsif (film.mpaa_rating == "R" && catalog == true) then image_tag 'R.png', {height: 24}
    elsif (film.mpaa_rating == "G" && catalog == false)  then image_tag 'G.jpg', {height: 40}
    elsif (film.mpaa_rating == "PG" && catalog == false) then image_tag 'PG.png', {height: 40}
    elsif (film.mpaa_rating == "PG13" && catalog == false) then image_tag 'PG13.png', {height: 40}
    elsif (film.mpaa_rating == "R" && catalog == false) then image_tag 'R.png', {height: 40}
    end
  end


end
