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

  after_save :update_search_tsv

  MPAARatings = ["G", "PG", "PG13", "R"]
  SortBy = ["Release Date", "MPAA Rating", "Run Time"]

  scope :pg_search, ->(query) {
    return all if query.blank?
    where("search_tsv @@ plainto_tsquery('#{query}')")
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

  def update_search_tsv
    genres_sql = genres.map { |g| "to_tsvector('#{g.name}')" }.join(" || ")
    people_sql = film_people.map { |fp| "to_tsvector('#{fp.person.name}') || to_tsvector('#{fp.person.birthdate}')"}.join(" || ")
    classifications_sql = film_classifications.map { |fc| "to_tsvector('#{fc.classification.name}') || to_tsvector('#{fc.value}')"}.join(" || ")
    sql = ["to_tsvector(title)", "to_tsvector(description)", "to_tsvector(mpaa_rating)", genres_sql, classifications_sql, people_sql].reject(&:blank?).join(" || ")
    ActiveRecord::Base.connection.exec_query(<<-SQL)
      UPDATE films
      SET search_tsv = (#{sql})
      WHERE films.id = #{id}
    SQL
  end


end
