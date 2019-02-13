class Person < ApplicationRecord
  has_many_and_belongs_to_many :films
  has_one_attached :headshot
end
