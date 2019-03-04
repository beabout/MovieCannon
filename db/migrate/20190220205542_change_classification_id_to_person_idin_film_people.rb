class ChangeClassificationIdToPersonIdinFilmPeople < ActiveRecord::Migration[5.2]
  def change
    change_table :film_people do |t|
      t.rename :classification_id, :person_id
    end
  end
end
