# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"



file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595075118/1072048_1_ontkbp.jpg")
character = Character.new(name: "Black Widow", genre: "Superhero", description: "Natasha Romanova was born in Stalingrad (now Volgograd), Russian SFSR, USSR. She a Russian agent trained as a spy, martial artist, and sniper, and outfitted with an arsenal of high-tech weaponry, including a pair of wrist-mounted energy weapons dubbed her Widow's Bite. Romanova eventually defects to the U.S. for reasons that include her love for the reluctant-criminal turned superhero archer, Hawkeye.
Wanna party all night long, hang out late at night in places where you normally would not dare to walk alone? Then go ahead and meet a day and or night with Ms Romanova.", price: 120, user_id: 1)
character.photo.attach(io: file, filename: "character.png",  content_type: 'image/png')
character.save!


file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595074957/monkey-d-luffy-one-piece-straw-hat-wallpaper-preview_o3pnwf.jpg")
character = Character.new(name: "Monkdey D Luffy", genre: "Anime", description: "Born on May 5, Luffy dreamed of being a pirate since childhood. At the age of 17, Luffy sets sails from the East Blue Sea to the Grand Line in search of the legendary treasure, One Piece, to succeed Gol D. Roger as King of the Pirates.
Luffy likes the sea, sailing, drinking and brawling. Basically, he likes being a pirate. If you want to have an amazing adventure, maybe go for a treasure hunt together with Zorro or see a guy eat a whole garden of vegetables for breakfast, booking Luffy will not leave you  dissapointed. You should calculate for his huge appetit though.", price: 80, user_id: 1)
character.photo.attach(io: file, filename: "luffy.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595075237/4k-itachi-uchiha-akatsuki-manga-red-eyes_wxpmko.jpg")
character = Character.new(name: "Itachi Uchiha", genre: "Anime", description: "Itachi is a member of the Uchiha Clan from the village of Konohagakure and the elder brother of Sasuke Uchiha. He grew up as the child prodigy of the Uchiha clan, establishing milestones for not only Sasuke, but also for future Uchiha to live up to.[17] His early childhood was marred by war, the violence of which caused him to seek peace at any cost.
If you are currently at war, plan to go to wa or just want to head out and fight some bad guys you want want to have Itachi as ur bodyguard.", price: 150, user_id: 1)
character.photo.attach(io: file, filename: "bitachi.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595075194/711450_tc3r93.jpg")
character = Character.new(name: "Link", genre: "Gaming", description: "Link is the name of various young men who characteristically wear a green tunic and a pointed cap, and are the bearers of the Triforce of Courage. This means that whoever turns out to be link is totally random! All is known is that it will be a young men. Will he be tall, short, thick, slim? Who knows. All you know is that you will get someone with courage, charisma and sportif. Also, he will be able to handle shield bow and sword no problem. Need a wolf at your side? Link can shapeshift, remember Game of Thrones? Exactly. Go right ahead and join Link for a unique experience and let yourself be surprised as to who this Link will be.", price: 30, user_id: 1)
character.photo.attach(io: file, filename: "link.png", content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595074990/downloaded_qhx7.1280_wtzri5.webp")
character = Character.new(name: "Master Chief", genre: "Gaming", description: "The Master Chief is a towering biochemically and cybernetically-enhanced supersoldier, raised and trained from an early age to be a weapon; he is almost faceless, never seen without his green-colored armor and helmet. He is commonly referred to by his naval rank, rather than his given birth-name or serial-designation.
Even though the Master Chief is an impressive figur and a very strong fighter, he is a very cool guy if he's not currently at war. Being a supersoldier, he likes to do all types of extreme sports, think skydiving, deep diving, downhill biking, free solo climbing, etc. You like adventure, don't like to ever look at the face of your comrade and want to do all that crazy, dangerous stuff you were allways told not to do? In that case, look no further and book the time of your life on the side of the legendary Master Chief.", price: 300, user_id: 1)
character.photo.attach(io: file, filename: "masterchief.png",  content_type: 'image/png')
character.save!

file = URI.open("https://res.cloudinary.com/dnfzsh177/image/upload/v1595075148/batman-yellow-background_1572368685_s4turc.jpg")
character = Character.new(name: "Batman", genre: "Superhero", description: "Batman lives and works in Gotham City with and has various friends there, including his butler Alfred, police commissioner Jim Gordon, and vigilante allies such as Robin. Unlike most superheroes, Batman does not possess any inhuman superpowers. He does, however, possess a genius-level intellect and is a peerless martial artist, and his vast wealth affords him an extraordinary arsenal of weaponry and equipment.
Therefore, challenging your argumentation skills, finishing your dissertation of just showing off with a very smart companion on your side, you will want to book some time with batman. If you live far away from Gotham, don't worry, batman has a jetplane and a supercar to come to you and if he really likes you, he make take you with him, no promises though, that is up to him.", price: 10, user_id: 1)
character.photo.attach(io: file, filename: "battie.png",  content_type: 'image/png')
character.save!
