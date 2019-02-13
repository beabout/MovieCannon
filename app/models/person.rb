class Person < ApplicationRecord
  has_and_belongs_to_many :films
  has_one_attached :headshot
end
