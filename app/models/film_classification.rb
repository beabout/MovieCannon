class FilmClassification < ApplicationRecord
  belongs_to :films
  belongs_to :classifications
end
