require 'faker'

puts "Destoying database..."
Review.destroy_all
Reservation.destroy_all
Place.destroy_all
User.destroy_all


puts "Creating 2 users.."
nina = User.create(
  email: "nina.chanteau@hec.edu",
  password: "123456",
  first_name: "Nina",
  last_name: "Chanteau",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/ninachanteau"
)

elsa = User.create(
  email: "elsa.gounot@gmail.com",
  password: "123456",
  first_name: "Elsa",
  last_name: "Gounot",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/elsagt"
)

marion = User.create(
  email: "bergeret.marion@gmail.com",
  password: "123456",
  first_name: "Marion",
  last_name: "Bergeret",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/marion-bergeret",
  band_manager: true
)

kenza = User.create(
  email: "kenza.aboudrar@gmail.com",
  password: "123456",
  first_name: "Kenza",
  last_name: "Aboudrar",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/kenzaaboudrar",
  band_manager: true
)

puts "Creating 10 places.."
place = Place.create(
 user_id: nina.id,
 address: "22 Rue Bonaparte, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/paris",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: elsa.id,
 address: "16 villa gaudelet, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: false,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/rio",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: elsa.id,
 address: "36 rue des vinaigriers, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/berlin",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: nina.id,
 address: "26 rue du borrego, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/london",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: nina.id,
 address: "10 rue du paradis, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: false,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/shanghai",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: elsa.id,
 address: "12 rue de l'ancienne comedie, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/amsterdam",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: elsa.id,
 address: "14 rue crespin du gast, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: false,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/lisbon",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: nina.id,
 address: "14 rue de chavrol, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/bali",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: elsa.id,
 address: "3 rue campagne première, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/sydney",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place = Place.create(
 user_id: nina.id,
 address: "150 boulevard du montparnasse, paris",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/nantes",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
