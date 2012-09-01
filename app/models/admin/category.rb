class Admin::Category < ActiveRecord::Base
  attr_accessible :category
  
  has_many :kevin_blogs
end
