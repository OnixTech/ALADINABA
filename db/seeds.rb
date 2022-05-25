
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

require "open-uri"

name = ["Persian carpet", "Cat carpet", "Hole carpet", "Forest carpet"]
description = ["Fuck you Tony!", "Better not rent it", "Not too bad, not too bad", "Perfect condition", "good condition, like 0km"]
address = ["catch me if you can", "High Avenue Z, next to the bridge", "Kulamalab 56, Istanbul", "Badstrasse 43, 10345 Berlin", "Koloniestrasse 140, 13359 Berlin"]
carpet_url = ["https://images.unsplash.com/photo-1594040226829-7f251ab46d80?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1616395442106-1b927fee41cd?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1600166898405-da9535204843?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800" "https://images.unsplash.com/photo-1588421874990-1fe162747f9b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1621700052663-f1170e9b26ec?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FycGV0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800"]


file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
a = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
a.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
a.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
b = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
b.save

file = URI.open("https://www.christovalcarpets.com/wp-content/uploads/2018/06/Carpets.jpg")
c = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
c.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
c.save

file = URI.open("https://www.rugvista.de/image/desk_pdp_zoom/423277.jpg")
d = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
d.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
d.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
b = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
b.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
e = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
e.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
e.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
f = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
f.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
f = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
f.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
g = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
g.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
g.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
h = Article.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
h.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
h.save