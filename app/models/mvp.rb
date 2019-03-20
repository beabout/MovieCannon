class Mvp
  Stat = Struct.new(:label, :link)

  def stats
    [
      number_of_films,
      person_with_most_films,
      oldest_film,
      oldest_person
    ]
  end


  ###
  # Returns a Stat with the number of films in the catalog
  ###
  def number_of_films
    Stat.new("There are #{Film.count} films in the catalog", [:films])
  end

  ###
  # Returns a Stat with the Person with the most relations to films in the catalog
  ###
  def person_with_most_films
    @fperson_w_most = FilmPerson.first
    FilmPerson.all.each do |fperson|
      if num_of_instances(@fperson_w_most) < num_of_instances(fperson)
        @fperson_w_most = fperson
      end
    end
    Stat.new("#{Person.find(@fperson_w_most.person_id).name} has #{num_of_instances(@fperson_w_most)} films in the catalog", nil)
  end

  ###
  # Utilized by person_with_most_films, returns the number of times a person_id is found in the FilmPerson table
  ###
  def num_of_instances(fperson)
    @id = fperson.person_id
    @person = FilmPerson.where(person_id: @id)
    @total_instances = @person.count
  end

  ###
  # Returns a Stat with the oldest film in the catalog based on release_date
  ###
  def oldest_film
    @film = Film.first
    for i in Film.all
      @temp = Film.find(i.id)
      if @film.year > @temp.year
        @film = @temp
      end
    end
    Stat.new("The oldest film in the catalog is #{@film.title} (#{@film.year})", [@film])
  end

  ###
  # Returns a Stat with the oldest person in the catalog based on birthdate
  ###
  def oldest_person
    @person = Person.first
    for i in Person.all
      @temp = Person.find(i.id)
      if @person.birthdate > @temp.birthdate
        @person = @temp
      end
    end
    Stat.new("The oldest person in the catalog is #{@person.name}, born in #{@person.birth_year}")
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
