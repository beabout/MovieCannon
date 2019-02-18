class Film < ApplicationRecord
  has_and_belongs_to_many :people
  has_one_attached :trailer_url
  has_one_attached :movie_poster
  has_one_attached :filmshot
  has_many :genres

  validates_presence_of :title

  def format_runtime
    if run_time > 60
      minutes = (run_time % 60).floor
      hours = (run_time / 60).floor
      "#{hours}#{"hr".pluralize(hours)} #{minutes}min"
    end
  end

end
