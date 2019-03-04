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

  def error_messages_for(*objects)
    options = objects.extract_options!
    messages = objects.compact.map { |o| o.errors.full_messages }.flatten
    unless messages.empty?
      content_tag(:div, id: "error_explanation") do
        list_items = messages.map { |msg| content_tag(:li, msg) }
        content_tag(:ul, list_items.join.html_safe, class: 'alert alert-danger')
      end
    end
  end
end
