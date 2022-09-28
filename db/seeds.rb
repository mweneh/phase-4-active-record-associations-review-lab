# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding in 3,2,1'

50.times do
    Passenger.create(name: Faker::Name.name)
end

40.times do
    Taxi.create(number: rand(1..100))
end

100.times do
    Ride.create(
    amount:rand(15...200)*10,
    duration:rand(5..90),
    taxi_id: Taxi.all[rand(Taxi.count)].id,
    passenger_id: Passenger.all[rand(Passenger.count)].id
)
end 

puts "You seeds have germinated!"