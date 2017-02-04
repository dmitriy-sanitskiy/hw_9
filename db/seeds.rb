# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "example@rails.org",
             password: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@rails.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password: password)
end

users = User.order(:created_at).take(6)
30.times do
  title = Faker::Lorem.sentence
  body = Faker::Lorem.sentence(10)
  users.each { |user| user.posts.create!(body: body, title: title) }
end

