class Comment < ActiveRecord::Base
  attr_accessible :user_id, :title, :content, :created_at, :updated_at, :kevin_blog_id
  
  belongs_to :kevin_blog
end
