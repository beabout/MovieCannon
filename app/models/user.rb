class User < ApplicationRecord
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  Bools = [true, false]

  def has_review_for_film?(film)
    reviews.where(film: film).exists?
  end
end


# @films.includes(:reviews).where(("reviews.id LIKE ?", "#{film.id}").exist?) => true)
# reviews.includes(:review).where(("reviews.film_id LIKE ?", "#{film.id}").exists?) => true
