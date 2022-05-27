
puts "Cleaning DB of prev records"

Carpet.destroy_all
User.destroy_all

puts "create first user"
user1 = User.new(
  email: "user@mail.com",
  password: "123456"
  )
user1.save!

puts "create second user"
user2 = User.new(
  email: "user2@mail.com",
  password: "123456"
  )
user2.save!

require "open-uri"

name = ["Persian carpet", "Cat carpet", "Hole carpet", "Forest carpet"]
description = ["Fuck you Tony!", "Better not rent it", "Not too bad, not too bad", "Perfect condition", "good condition, like 0km"]
address = ["catch me if you can", "High Avenue Z, next to the bridge", "Kulamalab 56, Istanbul", "Badstrasse 43, 10345 Berlin", "Koloniestrasse 140, 13359 Berlin"]


puts "creating carpets"
file = URI.open("https://m.media-amazon.com/images/I/81F9KaYblyL._SL1280_.jpg")
a = Carpet.new(name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
a.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
a.save

file = URI.open("https://stamboulbazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2021/10/Buy-turkish-carpets-rugs.jpg.webp")
b = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
b.save

file = URI.open("https://www.christovalcarpets.com/wp-content/uploads/2018/06/Carpets.jpg")
c = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
c.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
c.save

file = URI.open("https://www.rugvista.de/image/desk_pdp_zoom/423277.jpg")
d = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
d.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
d.save

file = URI.open("https://www.luluhypermarket.com/medias/1272411-001.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w0MjA3NjZ8aW1hZ2UvanBlZ3xpbWFnZXMvaGUzL2g3Yi85MTAzNjUyNTUyNzM0LmpwZ3wzOTVkMTM0ODQ1MTcyNWQ3NTY5NTAwOTUxNWZhMjNkYTI0YWMxYjA4MTA4NzIzZmEyNzg1ZGI0ZGZlNTA5Zjc1")
b = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
b.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
b.save

file = URI.open("https://5.imimg.com/data5/TH/HM/KZ/SELLER-7064954/carpet-500x500.jpeg")
e = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
e.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
e.save

file = URI.open("https://m.media-amazon.com/images/I/61i5XSPkngL._SL1080_.jpg")
f = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
f.save

file = URI.open("https://ii1.pepperfry.com/media/catalog/product/s/a/1100x1210/saral-home-soft-cotton-tufted-saggy-floor-carpet--90x150-cm-saral-home-soft-cotton-tufted-saggy-floo-od9xkw.jpg")
f = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
f.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
f.save

file = URI.open("https://image.made-in-china.com/2f0j00sqzGDuBcJRbr/Floor-Carpet-Soft-4cm-Rugs-Velvet-Carpets-for-Living-Room.jpg")
g = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
g.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
g.save

file = URI.open("https://static.wixstatic.com/media/22cbf6_7ccb357c3b2143c48299edbfa6ab9813~mv2.jpg/v1/fill/w_640,h_580,al_b,q_85,usm_0.66_1.00_0.01,enc_auto/22cbf6_7ccb357c3b2143c48299edbfa6ab9813~mv2.jpg")
h = Carpet.new(    name: name.sample,
description: description.sample,
address: address.sample,
condition: "like new",
price: 12,
available: true,
user: user1)
h.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
h.save

puts "Finished!...."
