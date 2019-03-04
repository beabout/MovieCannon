class Review < ApplicationRecord
  belongs_to :film
  belongs_to :user
  validates :user_id, :film_id, :description, presence: true
  validate :review_must_be_160_characters

  def review_must_be_160_characters
    if description.length < 160
      errors.add(:description, "must be longer than 160 characters")
    end
  end
end
