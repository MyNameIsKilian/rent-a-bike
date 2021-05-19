# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

photob1 = URI.open('https://images.unsplash.com/photo-1569943228307-a66beab7cd96?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1019&q=80')
photob2 = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
photob3 = URI.open('https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1008&q=80')



puts "Destroy bookings"
Booking.destroy_all

puts "Creating users"
User.destroy_all

val = User.create!(last_name: "Banzet", first_name: "Valentina", phone_number: "0215765412", email: "val@gmail.com", password: "123456", description: "VTC vert pour adulte")
soraya = User.create!(last_name: "Benberghout", first_name: "Soraya", phone_number: "0214765412", email: "soso@gmail.com", password: "123456", description: "Vélo de course bg")
kiki = User.create!(last_name: "Alliot", first_name: "Kilian", phone_number: "0215746412", email: "kiki@gmail.com", password: "123456", description: "VTT trop stylé")

puts "Creating bikes"
Bike.destroy_all

b1 = Bike.new(color: "red", size: "S", price: 15, user: val, address: "107 rue Balguerie Stuttenberg, Bordeaux")
b2 = Bike.new(color: "green", size: "M", price: 20, user: soraya, address: "100 rue Notre Dame, Bordeaux")
b3 = Bike.new(color: "white", size: "L", price: 25, user: kiki, address: "cité du vin, Bordeaux")

# val.bikes = b1
# soraya.bikes = b2
# kiki.bikes = b3
b1.photos.attach(io: photob1, filename: 'photo bike', content_type: 'image/png')
b2.photos.attach(io: photob2, filename: 'photo bike', content_type: 'image/png')
b3.photos.attach(io: photob3, filename: 'photo bike', content_type: 'image/png')
b1.save!
b2.save!
b3.save!
