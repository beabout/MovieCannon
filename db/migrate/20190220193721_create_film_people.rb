class CreateFilmPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :film_people do |t|
      t.column :film_id, :integer
      t.column :classification_id, :integer
      t.column :person_type_id, :integer
      t.timestamps
    end
  end
end
