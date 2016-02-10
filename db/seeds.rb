require 'faker'

# Create Users
5.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.save!
end
users = User.all

# Create test member
  member = User.new(
    email: "test@example.com",
    password: "password"
  )
  member.save!

# Create Items
  10.times do
    Item.create!(
      user: users.sample,
      name: Faker::Lorem.sentence
    )
  end

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
