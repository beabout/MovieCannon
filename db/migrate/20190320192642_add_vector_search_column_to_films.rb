class AddVectorSearchColumnToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :search_tsv, :tsvector
  end
end
