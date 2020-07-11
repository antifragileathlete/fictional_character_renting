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