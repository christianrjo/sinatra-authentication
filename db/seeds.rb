require 'faker'

# create a few users

#TODO: Once you have implemented BCrypt - you can use these to seed your database.


# User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
# 5.times do
#   User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
# end

class UserImporter
  def self.import
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: 'devbootcamp123'
    )

  end
end

5.times {UserImporter.import}