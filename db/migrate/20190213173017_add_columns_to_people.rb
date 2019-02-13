class AddColumnsToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :name, :string, :limit => 64, :null => false
    add_column :people, :birthdate, :date
    add_column :people, :type_id, :integer
  end
end
