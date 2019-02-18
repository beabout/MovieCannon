class ChangeAdminColumnNameInUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :is_admin, :admin
    end
  end
end
