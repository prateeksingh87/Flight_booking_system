# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role1 = Role.create(name:"admin")
role2 = Role.create(name:"user")

user = User.create(email:"admin@mailinator.com", password:"admin123", password_confirmation:"admin123")
user.add_role :admin

flight_1 = Flight.create(name: "Sunrise Airways", origin: "Indore", destination: "Pune",seats: 60)
flight_1.seatings.create(name: "Business class", seats: 20 , seat_price: 1000)
flight_1.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_1.seatings.create(name: "First class", seats: 10, seat_price: 5000)

flight_2 =  Flight.create(name: "Skyline Airways", origin: "Pune", destination: "Ahmedabaad",seats: 60)
flight_2.seatings.create(name: "Business class", seats: 20, seat_price: 1000)
flight_2.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_2.seatings.create(name: "First class", seats: 10, seat_price: 5000)

flight_3 = Flight.create(name: "LoneStar Airways", origin: "Indore", destination: "Mumbai",seats: 40)
flight_3.seatings.create(name: "Business class", seats: 20, seat_price: 1000)
flight_3.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_3.seatings.create(name: "First classs", seats: 10, seat_price: 5000)

flight_4 = Flight.create(name: "Sunrise Airways", origin: "Banglore", destination: "Delhi",seats: 40)
flight_4.seatings.create(name: "Business class", seats: 20, seat_price: 1000)
flight_4.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_4.seatings.create(name: "First class", seats: 10, seat_price: 5000)

flight_5 = Flight.create(name: "Puño Airlines", origin: "Indore", destination: "Noida",seats: 40)
flight_5.seatings.create(name: "Business class", seats: 20, seat_price: 1000)
flight_5.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_5.seatings.create(name: "First classs", seats: 10, seat_price: 5000)

flight_6 = Flight.create(name: "Goldstar Airways", origin: "Indore", destination: "Raipur",seats: 40)
flight_6.seatings.create(name: "Business class", seats: 20, seat_price: 1000)
flight_6.seatings.create(name: "Economic class", seats: 30, seat_price: 2000)
flight_6.seatings.create(name: "First class", seats: 10, seat_price: 5000)