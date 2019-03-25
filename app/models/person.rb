class Person < ApplicationRecord
  has_many :films, through: :film_people
  has_one_attached :headshot
  has_many :film_people, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  after_save :update_person

  def update_person
    film_people.each do |fp|
      fp.update_search_person
    end
  end



  def birth_year
    birthdate.strftime("%Y")
  end

end
