# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Comedy", "Crime", "Horror", "Musical", "Science Fiction", "War", "Western", "Chick Flick", "Biopic", "Mystery", "Romance", "Sports", "Suspense", "Drama", "Caper Story", "Thriller", "Coming of Age ", "Fantasy"]
person_types = ["Director", "Actor", "Composer", "Cinematographer"]
people = [
  {name: "Christopher Nolan ", birthdate: "Thu, 30 Jul 1970"}, 
  {name: "Mark Hamill ", birthdate: "Tue, 25 Sep 1951"}, 
  {name: "George Lucas", birthdate: "Sun, 14 May 1944"}, 
  {name: "Matt Damon", birthdate: "Thu, 08 Oct 1970"}, 
  {name: "Brad Pitt", birthdate: "Wed, 18 Dec 1963"}, 
  {name: "Michael Mann", birthdate: "Fri, 05 Feb 1943"}, 
  {name: "Al Pacino", birthdate: "Thu, 25 Apr 1940"}, 
  {name: "Robert De Niro", birthdate: "Tue, 17 Aug 1943"}, 
  {name: "Val Kilmer", birthdate: "Thu, 31 Dec 1959"}, 
  {name: "Ben Affleck ", birthdate: "Tue, 15 Aug 1972"}, 
  {name: "Richard Linklater", birthdate: "Sat, 30 Jul 1960"}, 
  {name: "Matthew McConaughey", birthdate: "Sat, 04 Oct 1969"}, 
  {name: "Quentin Tarantino", birthdate: "Wed, 27 Mar 1963"}, 
  {name: "John Travolta", birthdate: "Thu, 18 Feb 1954"}, 
  {name: "Uma Thurman", birthdate: "Wed, 29 Apr 1970"}, 
  {name: "Samuel L. Jackson", birthdate: "Tue, 21 Dec 1948"}, 
  {name: "Bruce Willis", birthdate: "Sat, 19 Mar 1955"}, 
  {name: "Nicholas Ray", birthdate: "Mon, 07 Aug 1911"}, 
  {name: "Natalie Wood", birthdate: "Wed, 20 Jul 1938"}, 
  {name: "James Dean", birthdate: "Sun, 08 Feb 1931"}, 
  {name: "John Williams ", birthdate: "Mon, 08 Feb 1932"}, 
  {name: "Will Ferrell", birthdate: "Sun, 16 Jul 1967"}, 
  {name: "Mike Ditka", birthdate: "Wed, 18 Oct 1939"}, 
  {name: "Robert Duvall", birthdate: "Mon, 05 Jan 1931"}, 
  {name: "Edgar Wright", birthdate: "Thu, 18 Apr 1974"}, 
  {name: "Ansel Elgort", birthdate: "Mon, 14 Mar 1994"}, 
  {name: "Lily James", birthdate: "Wed, 05 Apr 1989"}, 
  {name: "Jim Carrey", birthdate: "Wed, 17 Jan 1962"}, 
  {name: "Leslie Nielsen", birthdate: "Thu, 11 Feb 1926"}, 
  {name: "Steven Spielberg", birthdate: "Wed, 18 Dec 1946"}, 
  {name: "Anthony Daniels", birthdate: "Thu, 21 Feb 1946"}, 
  {name: "Carrie Fisher", birthdate: "Sun, 21 Oct 1956"}, 
  {name: "Irvin Kershner", birthdate: "Sun, 29 Apr 1923"}, 
  {name: "George Clooney", birthdate: "Sat, 06 May 1961"}, 
  {name: "Harrison Ford ", birthdate: "Mon, 13 Jul 1942"}, 
  {name: "Humphrey Bogart", birthdate: "Mon, 25 Dec 1899"}, 
  {name: "Francis Ford Coppola", birthdate: "Fri, 07 Apr 1939"}, 
  {name: "Alec Guinness", birthdate: "Thu, 02 Apr 1914"}, 
  {name: "Gilbert Taylor", birthdate: "Sun, 12 Apr 1914"}, 
  {name: "Orson Welles", birthdate: "Thu, 06 May 1915"}, 
  {name: "Stanley Kubrick", birthdate: "Thu, 26 Jul 1928"}, 
  {name: "Keir Dullea", birthdate: "Sat, 30 May 19"36}
]

genres.each do |genre|
  Genre.create(name: genre, description: genre.downcase)
end

person_types.each do |person_type|
  PersonType.create(name: person_type)
end

people.each do |p|
  Person.create(name: p[:name], birthdate: p[:birthdate])
end
