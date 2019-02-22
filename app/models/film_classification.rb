class FilmClassification < ApplicationRecord
  belongs_to :film
  belongs_to :classification
end
