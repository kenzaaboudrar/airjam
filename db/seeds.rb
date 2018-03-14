require 'faker'

puts "Creating 20 places"
20.times do
 place = Place.new(
   user: User.first,
   address: Faker::Address.street_address + ", " + Faker::Address.city,
   name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
   stage_capacity: rand(1..15),
   equipped: true,
   remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/random",
   description: Faker::Lorem.paragraph,
   category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
   price: rand(20..400)
 )
 place.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
