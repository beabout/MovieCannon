class AddColumnsToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :title, :string, :limit => 40, :null => false
    add_column :films, :description, :text
    add_column :films, :release_date, :date
    add_column :films, :run_time, :float
  end
end
