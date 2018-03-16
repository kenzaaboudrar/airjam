require 'faker'

puts "Destoying database..."
Review.destroy_all
Reservation.destroy_all
Place.destroy_all
User.destroy_all


puts "Creating 4 users.."
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
 address: "22 Rue Bonaparte, Paris, France",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/paris",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: 200
)

place_reserved = Place.create(
 user_id: elsa.id,
 address: "16 Villa Gaudelet, Paris, France",
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
 address: "36 Rue des Vinaigriers, Paris, France",
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
 address: "26 Rue du Borrégo, Paris, France",
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
 address: "10 Rue de Paradis, Paris, France",
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
 address: "12 Rue de l'Ancienne Comédie, Paris, France",
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
 address: "14 Rue Crespin du Gast, Paris, France",
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
 address: "14 Rue de Chabrol, Paris, France",
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
 address: "3 Rue Campagne Première, Paris, France",
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
 address: "150 Boulevard du Montparnasse, Paris, France",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/nantes",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

puts "Creating 1 reservation"
reservation = Reservation.create(
  user_id: marion.id,
  place_id: place_reserved.id,
  date: "Thu, 15 Mar 2018 12:00:00 UTC +00:00",
  duration: 4,
  price: 800,
  status: "accepted"
)

puts "Finished!"
