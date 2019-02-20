class FilmClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :film_classifications do |t|
      t.column :film_id, :integer
      t.column :classification_id, :integer
      t.column :value, :string
    end
  end
end
