
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
carpet_url = ["https://images.unsplash.com/photo-1594040226829-7f251ab46d80?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1616395442106-1b927fee41cd?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1600166898405-da9535204843?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800" "https://images.unsplash.com/photo-1588421874990-1fe162747f9b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1621700052663-f1170e9b26ec?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800"]

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
