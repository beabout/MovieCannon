class Genres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.column :type, :string
      t.column :description, :text
    end
  end
end
