class Film < ApplicationRecord
  has_one_attached :trailer_url
  has_one_attached :movie_poster
  has_one_attached :filmshot
  has_and_belongs_to_many :genres
  # has_many :classifications, through: :film_classifications
  has_many :film_classifications, dependent: :destroy
  has_many :film_people, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # has_many :people, through: :film_people #allows film.people
  accepts_nested_attributes_for :film_people, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :film_classifications, reject_if: :all_blank, allow_destroy: true
  validates :title, uniqueness: true, presence: true
  validates_associated :film_people

  MPAARatings = ["G", "PG", "PG13", "R"]
  SortBy = ["Release Date", "MPAA Rating", "Run Time"]

  scope :pg_search, ->(query) {
    return all if query.blank?
    where("to_tsvector(title || ' ' || description || ' ' || release_date || ' ' || mpaa_rating) @@ plainto_tsquery('#{query}')")
  }

  def format_runtime
    if run_time > 60
      minutes = (run_time % 60).floor
      hours = (run_time / 60).floor
      "#{hours}#{"hr".pluralize(hours)} #{minutes}min"
    end
  end

  def year
    release_date.strftime("%Y")
  end

  def format_releasedate
    release_date.strftime("%B %d, %Y")
  end

  def genre_list
    genres.map { |s| s.name }.join(", ")
  end


end
