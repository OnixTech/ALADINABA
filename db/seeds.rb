
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

file = URI.open("https://m.media-amazon.com/images/I/81F9KaYblyL._SL1280_.jpg")
a = Carpet.new(name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
a.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
a.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
b = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
b.save

file = URI.open("https://www.christovalcarpets.com/wp-content/uploads/2018/06/Carpets.jpg")
c = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
c.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
c.save

file = URI.open("https://www.rugvista.de/image/desk_pdp_zoom/423277.jpg")
d = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
d.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
d.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
b = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
b.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
e = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
e.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
e.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
f = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
f.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
f = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
f.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
g = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
g.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
g.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
h = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
h.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
h.save
