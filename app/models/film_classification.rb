class FilmClassification < ApplicationRecord
  belongs_to :film
  belongs_to :classification

  accepts_nested_attributes_for :classification

  def update_search_classification
    film.update_search_tsv
  end
end
