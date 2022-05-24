
puts "Cleaning DB of prev records"

Carpet.destroy_all
User.destroy_all

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

name = ["Persian carpet", "Cat carpet", "Hole carpet", "Forest carpet"]
description = ["Fuck you Tony!", "Better not rent it", "Not too bad, not too bad", "Perfect condition", "good condition, like 0km"]
address = ["catch me if you can", "High Avenue Z, next to the bridge", "Kulamalab 56, Istanbul", "Badstrasse 43, 10345 Berlin", "Koloniestrasse 140, 13359 Berlin"]

20.times do
    Carpet.create(
    name: name.sample,
    description: description.sample,
    address: address.sample,
    condition: "like new",
    price: 12,
    available: true,
    user: user1
  )
end

