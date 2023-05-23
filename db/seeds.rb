# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Car.destroy_all
User.destroy_all


# seeds.rb

# Create users
user1 = User.create!(email: "john@example.com", password: "password")
user2 = User.create!(email: "jane@example.com", password: "password")
# ...

# Create cars for user1
5.times do
  user1.cars.create!(
    make: "Toyota",
    model: "Camry",
    price_per_day: rand(30..100).to_f
  )
end

# Create cars for user2
5.times do
  user2.cars.create!(
    make: "Honda",
    model: "Civic",
    price_per_day: rand(30..100).to_f
  )
end

# Create cars for additional users...

# ...

# Create more cars as needed...
