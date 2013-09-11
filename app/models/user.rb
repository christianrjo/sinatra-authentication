#the fact it's already on the gem file, do you need to put it here




class User < ActiveRecord::Base
  #TODO : Use bcrypt to store hashed passwords and authenticate users
include BCrypt

  def password
  	@password ||= Password.new(password_hash)
  end

  def password=(new_password)
  	@password ||= Password.create(new_password)
  	self.password_hash = @password
  end

end
