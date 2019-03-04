class FilmPerson < ApplicationRecord
  belongs_to :person
  belongs_to :film
  belongs_to :person_type
  validates_presence_of :film
end
