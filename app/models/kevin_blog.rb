class KevinBlog < ActiveRecord::Base
  attr_accessible :body, :category_id, :created_at, :created_by, :post, :state, :tag, :title, :updated_at, :updated_by
  
  belongs_to :user
  belongs_to :category
  has_many :comments
  
  def find_username(id="")
    return Admin::User.find(id).username
  end
  
  scope :category, lambda { |category_id| where("category_id = ?", category_id ) }
end
