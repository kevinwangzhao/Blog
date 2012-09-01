class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :username
      t.string :password
      t.string :mail
      t.datetime :created_at
      t.datetime :login

      t.timestamps
    end
  end
end
