class Person < ApplicationRecord
  has_many :films, through: :film_people
  has_one_attached :headshot
  has_many :film_people

  validates :name, presence: true
end
