class Person < ApplicationRecord
  has_many :films, through: :film_people
  has_one_attached :headshot
  has_many :film_people, dependent: :destroy

  validates :name, presence: true, uniqueness: true




  def birth_year
    birthdate.strftime("%Y")
  end

end
