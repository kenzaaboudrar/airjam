require 'faker'

puts "Destoying database..."
Review.destroy_all
Reservation.destroy_all
Place.destroy_all
User.destroy_all


puts "Creating 6 users.."
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

jeremy = User.create(
  email: "jeremy@gmail.com",
  password: "123456",
  first_name: "Jeremy",
  last_name: "Merlot",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/JeremyMerlot",
  band_manager: true
)

germain = User.create(
  email: "germain@gmail.com",
  password: "123456",
  first_name: "Germain",
  last_name: "Loret",
  remote_avatar_url: "https://kitt.lewagon.com/placeholder/users/grmnlrt",
  band_manager: true
)

puts "Creating 10 places.."
place_1 = Place.create(
 user_id: nina.id,
 address: "22 Rue Bonaparte, Paris, France",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: true,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/paris",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: rand(20..400)
)

place_2 = Place.create(
 user_id: elsa.id,
 address: "16 Villa Gaudelet, Paris, France",
 name: Faker::BossaNova.song + [" Bar", " Club", ""].sample,
 stage_capacity: rand(1..15),
 equipped: false,
 remote_photo_url: "https://kitt.lewagon.com/placeholder/cities/rio",
 description: Faker::Lorem.paragraph,
 category: ["Blues Bar", "Buena Vista", "Macarena", "Jazz", "American Rock", "Indie"].sample,
 price: 200
)

place_3 = Place.create(
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

place_4 = Place.create(
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

place_5 = Place.create(
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

place_6 = Place.create(
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

place_7 = Place.create(
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

place_8 = Place.create(
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

place_9 = Place.create(
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

place_10 = Place.create(
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
  place_id: place_2.id,
  date: "Thu, 15 Mar 2018 12:00:00 UTC +00:00",
  duration: 4,
  price: 800,
  status: "accepted"
)

puts "Creating 2 reviews per place..."
review = Review.create(
  user_id: jeremy.id,
  place_id: place_1.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_1.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_2.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_2.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_3.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_3.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_4.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_4.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_5.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_5.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_6.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_6.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_7.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_7.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_8.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_8.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_9.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_9.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: jeremy.id,
  place_id: place_10.id,
  title: "Happy birthday!",
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

review = Review.create(
  user_id: germain.id,
  place_id: place_10.id,
  title: Faker::HowIMetYourMother.catch_phrase,
  rating: rand(1..5),
  content: Faker::Lorem.paragraph
)

puts "Finished!"
