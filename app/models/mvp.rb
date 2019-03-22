class Mvp
  Stat = Struct.new(:label, :link, :link_label)

  def stats
    [
      number_of_films,
      oldest_film,
      film_with_most_reviews,
      most_common_genre,
      person_with_most_films,
      oldest_person,
      youngest_person,
      user_w_most_reviews
    ].compact
  end


  ###
  # Returns a Stat with the number of films in the catalog
  ###
  def number_of_films
    Stat.new("There are #{Film.count} films in the catalog", [:films], "Films")
  end

  ###
  # Returns a Stat with the Person with the most relations to films in the catalog
  ###
  def person_with_most_films
    count = FilmPerson.group(:person_id).count.max_by { |k, v| v}
    if count
      person = Person.find(count.first)
      Stat.new("#{person.name} is in #{count.second} films in the catalog")
    end
  end

  ###
  # Returns a Stat with the film with the most reviews in the catalog
  ###
  def film_with_most_reviews
    count = Review.group(:film_id).count.max_by { |k, v| v}
    if count
      film = Film.find(count.first)
      Stat.new("#{film.title} has the most reviews (#{count.second} Reviews)", [film], film.title)
    end
  end

  ###
  # Returns a Stat with the most common genre used by films in the catalog
  ###
  def most_common_genre
    count = Film.joins(:genres).group(:genre_id).count.max_by { |k, v| v }
    if count
      genre = Genre.find(count.first)
      Stat.new("The most common genre in the catalog is #{genre.name} (found in #{count.second} films)")
    end
  end

  ###
  # Returns a Stat with the oldest film in the catalog based on release_date
  ###
  def oldest_film
    @film = Film.order(release_date: :asc).first
    Stat.new("The oldest film in the catalog is #{@film.title} (#{@film.year})", [@film], @film.title)
  end

  ###
  # Returns a Stat with the oldest person in the catalog based on birthdate
  ###
  def oldest_person
    @person = Person.order(birthdate: :asc).first
    Stat.new("The oldest person in the catalog is #{@person.name} (born in #{@person.birth_year})")
  end

  ###
  # Returns a Stat with the youngest person in the catalog based on birthdate
  ###
  def youngest_person
    @person = Person.order(birthdate: :desc).first
    Stat.new("The youngest person in the catalog is #{@person.name} (born in #{@person.birth_year})")
  end


  ###
  # Returns a Stat with the user in the catalog with the most reviews
  ###
  def user_w_most_reviews
    count = Review.group(:user_id).count.max_by { |k, v| v }
    if count
      user = User.find(count.first)
      Stat.new("#{user.email} has written the most reviews (#{count.second} Reviews)")
    end

  end



end
