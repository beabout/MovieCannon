class AddMpaaRatingColToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :mpaa_rating, :string
  end
end
