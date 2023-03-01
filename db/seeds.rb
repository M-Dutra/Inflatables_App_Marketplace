require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
puts 'Creating 10 fake user...'
10.times do
  name = Faker::Name.first_name
  user = User.new(
    first_name: name,
    last_name: Faker::Name.last_name,
    password: "123456",
    email: "#{name}@example.com"
  )
  user.save!
end

Inflatable.all.each do |inflatable|
  inflatable.photo.purge
end
Inflatable.destroy_all
puts 'Creating 20 fake inflatables...'
20.times do
  inflatable = Inflatable.new(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    category: ["toys", "costumes", "slides", "balloons", "pools"].sample,
    price: Faker::Commerce.price,
    user: User.all.sample
  )
  file = URI.open("https://source.unsplash.com/random/?balloon")
  inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  p inflatable
  inflatable.save!
end
