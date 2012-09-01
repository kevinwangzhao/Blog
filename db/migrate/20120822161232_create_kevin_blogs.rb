class CreateKevinBlogs < ActiveRecord::Migration
  def change
    create_table :kevin_blogs do |t|
      t.boolean :state
      t.integer :category_id
      t.string :title
      t.text :body
      t.string :tag
      t.datetime :created_at
      t.integer :user_id
      t.datetime :updated_at
      t.integer :updated_by

      t.timestamps
    end
  end
end
