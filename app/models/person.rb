class Person < ApplicationRecord
  has_many :film_people, dependent: :destroy
  has_many :films, through: :film_people
  has_one_attached :headshot
  validates :name, presence: true, uniqueness: true

  after_save :update_person

  def update_person
    if film_people
      film_people.each do |fp|
        fp.update_search_person
      end
    end
  end



  def birth_year
    return unless birthdate
    birthdate.strftime("%Y")
  end

end
