class Review < ApplicationRecord
  belongs_to :film
  belongs_to :user
  validates :user_id, :film_id, :description, presence: true
end
