class Genre < ApplicationRecord
  has_and_belongs_to_many :films

  after_save :update_genres

  def update_genres
    films.each do |f|
      f.update_search_tsv
    end
  end
end
