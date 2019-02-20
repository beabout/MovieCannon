class FilmPerson < ApplicationRecord
  belongs_to :people
  belongs_to :films
  belongs_to :person_types
end
