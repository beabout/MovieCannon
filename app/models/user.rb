class User < ApplicationRecord
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def has_review_for_film?(film)
    @bool = false
    film.reviews.each do |review|
      if id == review.user_id
        @bool = true
      end
    end
    return @bool
  end

  # reviews.where(...).exists?
end
