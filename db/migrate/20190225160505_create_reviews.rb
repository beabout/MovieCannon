class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :user_id, :integer
      t.column :film_id, :integer
      t.column :description, :text
      t.timestamps
    end
  end
end
