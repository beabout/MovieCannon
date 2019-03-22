class FilmClassification < ApplicationRecord
  belongs_to :film
  belongs_to :classification

  accepts_nested_attributes_for :classification
end
