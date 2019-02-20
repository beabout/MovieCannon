class Person < ApplicationRecord
  has_and_belongs_to_many :films, through: :person_types
  has_one_attached :headshot
end
