class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :content
      t.datetime :created_at

      t.timestamps
    end
  end
end
