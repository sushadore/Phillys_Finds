class RemoveAdminUsername < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :username
  end
end
