class Classification < ApplicationRecord
  has_many :films, through: :film_classifications
end
