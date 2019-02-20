class JoinerForFilmsAndGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :films_genres, id: false do |t|
      t.belongs_to :film, index: true
      t.belongs_to :genre, index: true
    end
  end
end
