class Film < ApplicationRecord
  has_and_belongs_to_many :people
  has_one_attached :trailer_url
  has_one_attached :movie_poster
  has_one_attached :filmshot
  has_and_belongs_to_many :genres

  validates_presence_of :title
  validate :has_nationality_classification

  MPAARatings = ["G", "PG", "PG13", "R"]

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

  def has_nationality_classification
    # find nationality classification
    # if not found
    #  errors.add(:base, "No nationality classification present")
    # end
  end

end