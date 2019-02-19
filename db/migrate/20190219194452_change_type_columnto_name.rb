class ChangeTypeColumntoName < ActiveRecord::Migration[5.2]
  def change
    change_table :genres do |t|
      t.rename :type, :name
    end
  end
end
