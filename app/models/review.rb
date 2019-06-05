class Review < ApplicationRecord
  belongs_to :film
  belongs_to :user
  validates :user_id, :film_id, :description, presence: true
  validate :review_must_be_100_characters

  def review_must_be_100_characters
    if description.length < 100
      errors.add(:description, "must be longer than 100 characters")
    end
  end

  def formatted_rating
    "#{((rating / 20) * 100).round(0)}%"
  end
end
