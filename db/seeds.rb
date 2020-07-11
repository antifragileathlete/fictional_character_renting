# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"



file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594289736/Characters/Characters/Green_Arrow.jpg")
character = Character.new(name: "Green Arrow", genre: "Superhero", user_id: 1)
character.photo.attach(io: file, filename: "character.png", content_type: 'image/png')
character.save!


file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594289736/Characters/Characters/Black_Panther.png")
character = Character.new(name: "Black Panther", genre: "Superhero", user_id: 1)
character.photo.attach(io: file, filename: "blackie.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594288367/Uchiha-Clan-Itachi.jpg_xgv22d.jpg")
character = Character.new(name: "Itachi Uchiha", genre: "Anime", user_id: 1)
character.photo.attach(io: file, filename: "bitachi.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594289732/Characters/Characters/Link.png")
character = Character.new(name: "Link", genre: "Gaming", user_id: 1)
character.photo.attach(io: file, filename: "link.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594289737/Characters/Characters/Mario.jpg")
character = Character.new(name: "Mario", genre: "Gaming", user_id: 1)
character.photo.attach(io: file, filename: "mario.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1594289731/Characters/Characters/Batman.png")
character = Character.new(name: "Batman", genre: "Superhero", user_id: 1)
character.photo.attach(io: file, filename: "battie.png", content_type: 'image/png')
character.save!