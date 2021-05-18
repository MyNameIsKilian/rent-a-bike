# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating users"

val = User.create!(last_name: "Banzet", first_name: "Valentina", phone_number: "0215765412", email: "val@gmail.com", password: "123456")
soraya = User.create!(last_name: "Benberghout", first_name: "Soraya", phone_number: "0214765412", email: "soso@gmail.com", password: "123456")
kiki = User.create!(last_name: "Alliot", first_name: "Kilian", phone_number: "0215746412", email: "kiki@gmail.com", password: "123456")

puts "Creating bikes"

b1 = Bike.new(color: "red", size: "S", price: 15, user: val)
b2 = Bike.new(color: "green", size: "M", price: 20, user: soraya)
b3 = Bike.new(color: "white", size: "L", price: 25, user: kiki)

# val.bikes = b1
# soraya.bikes = b2
# kiki.bikes = b3
b1.save!
b2.save!
b3.save!
