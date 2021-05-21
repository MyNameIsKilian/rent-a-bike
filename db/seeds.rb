# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Creating photos"
photob1 = URI.open('https://images.unsplash.com/photo-1569943228307-a66beab7cd96?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1019&q=80')
photob2 = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photob3 = URI.open('https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1008&q=80')
photob4 = URI.open('https://www.citycle.com/wp-content/uploads/2016/03/materiel-velo-obligatoire-bicyclette-equipee-code-de-la-route.jpg')
photob5 = URI.open('https://www.letelegramme.fr/images/2020/10/02/le-nouveau-velo-de-julian-alaphilippe_5331289_676x382p.jpg?v=1')
photob6 = URI.open('https://media.intersport.fr/is/image/intersportfr/5005816CAM_Q1?$produit_l$&$product_grey$')
photob7 = URI.open('https://www.topvelo.fr/storage/2021/04/Bertin-C133-4Q5A5199-627x376.jpg')
photob8 = URI.open('https://www.matosvelo.fr/public/Tests/Materiel/Orbea/Terra_H30D/Orbea-Terra-H30D-001.jpg')

puts "Destroy bookings"
Booking.destroy_all

puts "Creating 3 users"
User.destroy_all

val = User.create!(last_name: "Banzet", first_name: "Valentina", phone_number: "0215765412", email: "val@gmail.com", password: "123456")
soraya = User.create!(last_name: "Benberghout", first_name: "Soraya", phone_number: "0214765412", email: "soso@gmail.com", password: "123456")
kiki = User.create!(last_name: "Alliot", first_name: "Kilian", phone_number: "0215746412", email: "kiki@gmail.com", password: "123456")

puts "Creating 8 bikes"
Bike.destroy_all

b1 = Bike.new(color: "green", size: "S", price: 15, user: val, address: "107 rue Balguerie Stuttenberg, Bordeaux", description: "VTC vert pour adulte", accessories: "")
b2 = Bike.new(color: "white", size: "M", price: 20, user: soraya, address: "100 rue Notre Dame, Bordeaux", description: "Vélo de course bg", accessories: "gourde")
b3 = Bike.new(color: "black", size: "L", price: 25, user: kiki, address: "cité du vin, Bordeaux", description: "VTT trop stylé", accessories: "garde boue")
b4 = Bike.new(color: "black", size: "M", price: 15, user: val, address: "Stade Chaban Delmas, Bordeaux", description:"VTC confort", accessories: "sonnette")
b5 = Bike.new(color: "Multi Color", size: "L", price: 22, user: val, address: "Place des Quinconces, Bordeaux", description:"VTT super rapide", accessories: "prêt du casque")
b6 = Bike.new(color: "pink", size: "S", price: 8, user: val, address: "Place Stalingrad, Bordeaux", description: "Vélo enfant roulettes", accessories: "petites roulettes")
b7 = Bike.new(color: "gray", size: "M", price: 14, user: val, address: "105 rue Mandron, Bordeaux", description: "VTT incroyable", accessories: "lumière et antivol")
b8 = Bike.new(color: "green", size: "L", price: 12, user: val, address: "Place de la Bourse, Bordeaux", description: "VTT adulte", accessories: "")

# val.bikes = b1
# soraya.bikes = b2
# kiki.bikes = b3
puts "Attaching photos to bikes"
b1.photos.attach(io: photob1, filename: 'photo bike', content_type: 'image/png')
b2.photos.attach(io: photob2, filename: 'photo bike', content_type: 'image/png')
b3.photos.attach(io: photob3, filename: 'photo bike', content_type: 'image/png')
b4.photos.attach(io: photob4, filename: 'photo bike', content_type: 'image/png')
b5.photos.attach(io: photob5, filename: 'photo bike', content_type: 'image/png')
b6.photos.attach(io: photob6, filename: 'photo bike', content_type: 'image/png')
b7.photos.attach(io: photob7, filename: 'photo bike', content_type: 'image/png')
b8.photos.attach(io: photob8, filename: 'photo bike', content_type: 'image/png')

puts "Saving my bikes"
b1.save!
b2.save!
b3.save!
b4.save!
b5.save!
b6.save!
b7.save!
b8.save!
