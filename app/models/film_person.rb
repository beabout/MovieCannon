class FilmPerson < ApplicationRecord
  belongs_to :person
  belongs_to :film
  belongs_to :person_type
  validates_presence_of :film
  validates_associated :person

  accepts_nested_attributes_for :person

  def update_search_person
    film.update_search_tsv
  end

end
