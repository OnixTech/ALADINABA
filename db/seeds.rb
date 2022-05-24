# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning DB of prev records"
User.destroy_all
Carpet.destroy_all

puts "create 1 user"

user1 = User.new(
  email: "user@mail.com",
  password: "123456"
  )
user1.save!

user2 = User.new(
  email: "user2@mail.com",
  password: "123456"
  )
user2.save!

puts "Creating 2 carpets"
carpet1 = Carpet.new(name: 'uglyrug', description: "it has cat pee on it", address: "123 Miaustreet", condition: "like new")
carpet1.user = user1
carpet1.save!
puts "Created the first carpet with the following attributes"
puts "Name: #{carpet1.name}"
puts "Address: #{carpet1.address}"
puts ""

carpet2 = Carpet.new(name: 'slightlyuglyrug', description: "it has doggydou on it", address: "234 Miaustreet", condition: "like new")
carpet2.user = user1
carpet2.save!
puts "Created the second carpet with the following attributes"
puts "Name: #{carpet2.name}"
puts "Address: #{carpet2.address}"
puts ""

puts "Finished!"
# t.string "name"
# t.text "description"
# t.string "address"
# t.string "condition"
