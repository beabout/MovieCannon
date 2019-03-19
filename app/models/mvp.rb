class Mvp
  Stat = Struct.new(:label, :link)

  def stats
    [
      number_of_films,
      person_with_most_films,
      oldest_film
    ]
  end

  def number_of_films
    Stat.new("There are #{Film.count} films in the catalog", [:films])
  end

  def person_with_most_films
    @person = FilmPerson.find(1)
    @count = 0
    for i in FilmPerson.all
      @temp = FilmPerson.find(i.id)
      if @person.person_id == @temp.person_id
        @count+=1
      end
    end
    Stat.new("#{@person.person_id} has #{@person.person_id} films in the catalog", nil)
  end

  def oldest_film
    @film = Film.find(1)
    for i in Film.all
      @temp = Film.find(i.id)
      if @film.year > @temp.year
        @film = @temp
      end
    end
    Stat.new("The oldest film in the catalog is #{@film.title} (#{@film.year})", [@film])
  end

  def film_with_most_reviews

  end

  def most_common_genre

  end

  def average_mpaa_rating
    @g #all films with g rating
    @pg #all films with pg rating
    @pg13 #all films with pg13 rating
    @r #all films with r rating
  end


end
