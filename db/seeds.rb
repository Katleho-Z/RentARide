# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing data base"
Car.destroy_all
User.destroy_all


# Create users
user1 = User.create!(name: "John", email: "john@example.com", password: "password")
user2 = User.create!(name: "Jane", email: "jane@example.com", password: "password")
# ...

# Create cars for user1
2.times do
  user1.cars.create!(
    make: "Toyota",
    model: "Camry",
    price_per_day: rand(30..100).to_f
  )
end

# Create cars for user2
2.times do
  user2.cars.create!(
    make: "Honda",
    model: "Civic",
    price_per_day: rand(30..100).to_f
  )
end

puts "#{User.count} users created"
puts "#{Car.count} cars created"
