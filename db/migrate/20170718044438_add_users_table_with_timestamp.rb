class AddUsersTableWithTimestamp < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :username, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
      t.column :admin, :boolean, default: false

      t.timestamps
    end
  end
end
