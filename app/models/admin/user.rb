class Admin::User < ActiveRecord::Base
  attr_accessible :created_at, :login, :mail, :password, :username
  
  has_many :kevin_blogs
  
  #TODO: check if the user has exits
  def self.authenticate(username="", password="")
    user = Admin::User.find_by_username(username)
    if user && user.password==password
      return user
    self
      return false
    end
  end
  
  #The same password string with the same hash method
  #def password_match?(pass="")
  #  password == self.hash(pass)
  #end
  
  #TODO: hash the password
  #def self.hash(password="")
  #  Digset::SHA1.hexdigest(password)
  #end
end
