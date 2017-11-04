# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Artiszoo.destroy_all
Animal.destroy_all

artiszoo1 = Artiszoo.create! ( {department: "Aquatic"})
artiszoo2 = Artiszoo.create! ( {department: "Safari"})

artiszoos_count = Artiszoo.count
puts "#{artiszoos_count} artiszoos were created"


animal1 = Animal.create! ( {name: "Penguin", food: "Fish", image_url: "https://tinyurl.com/ycu7ha5m", artiszoo: artiszoo1})
animal2 = Animal.create! ( {name: "Polar Bear", food: "Walrus", image_url: "https://tinyurl.com/y8djwbjy", artiszoo: artiszoo1})
animal3 = Animal.create! ( {name: "Tiger", food: "Rabit", image_url: "https://tinyurl.com/yboxzds9", artiszoo: artiszoo2})
animal4 = Animal.create! ( {name: "Lion", food: "Deer", image_url: "https://tinyurl.com/y9gjxyj7", artiszoo: artiszoo2})


animals_count = Animal.count
puts "#{animals_count} animals were created"
