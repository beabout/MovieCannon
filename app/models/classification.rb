class Classification < ApplicationRecord
  has_many :film_classifications
  has_many :films, through: :film_classifications

  after_save :update_classification

  def update_classification
    film_classifications.each do |fc|
      fc.update_search_classification
    end
  end
end
