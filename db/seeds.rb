# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Strat seeding super seeds..."
Character.destroy_all
Scene.destroy_all
Project.destroy_all
User.destroy_all
Mood.destroy_all
Mooditem.destroy_all



user1 = User.new(email: "superconnard@geaimail.com", password: "azerty")
user1.save!

user2 = User.new(email: "superinspiration@gmail.com", password: "azerty")
user2.save!

project1 = Project.new(title: "Super Chiotte", pitch: "C'est l'histoire d'un super chiotte qui gagne 100€ au PMU", category: "Movie", synopsis: "Plein d'euros gagnés au PMU par super chiotte, il les dépense instantanément en canette de biere, 9,9° of course. Bises")
project1.user = user1
project1.save!

project2 = Project.new(title: "La gomme magique", pitch: "C'est l'histoire d'une gomme magique", category: "Movie", synopsis: "Une gomme devient magique parce que c'est comme ca, fin.")
project2.user = user1
project2.save!

character1 = Character.new(first_name: "Jean", last_name: "Valjean", birthdate: Time.now, genre: "Male", description: "Un super type")
character1.project = project1
character1.save!

character2 = Character.new(first_name: "Jeanne", last_name: "Valjeanne", birthdate: Time.now, genre: "Female", description: "Une super meuf")
character2.project = project1
character2.save!


character3 = Character.new(first_name: "Omar", last_name: "Little", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Omar Devone Little is a notorious Baltimore stick-up man, who frequently robs street-level drug dealers. He is legendary around Baltimore for his characteristic duster, under which he hides his shotgun, large caliber handgun, and bulletproof vest, as well as for his facial scar. Omar has a strict moral code, which involves refusal to harm innocent civilians and distaste (usually) for profanity, setting him apart from other street-level characters.")
character3.project = project1
character3.save!

character4 = Character.new(first_name: "Hubert", last_name: "Bonnisseur de la Bath", birthdate: Time.now, genre: "Male", description: "Physique
                          Jean Dujardin, interprète d'OSS 117 au cinéma en 2006 et 2009.

                              « Hubert Bonisseur de La Bath était un solide gaillard à la carrure athlétique de sportif en pleine possession de ses moyens, au visage énergique et buriné de prince pirate. Son regard clair, à l'ironie tranquille, se posait sur les êtres et les choses avec cette assurance née d'une vie riche en aventures. Son charme ne laissait aucune femme insensible. »

                          — Josette Bruce, TNT à la Trinité


                              « Un homme de haute taille, bâti en athlète, avec de larges épaules musclées, qui avait l'assurance d'un champion et l'allure d'un prince. [...] Un visage d'aventurier comme [on] n'en avait vu qu'au cinéma, avec un nez droit et des lèvres sensuelles, des cheveux châtains coupés très court et des yeux bleus dont on soutenait difficilement le regard. »

                          — Josette Bruce, Pruneaux à Lugano


                          Ainsi, il a toutes les caractéristiques plus ou moins réalistes de l'espion, qui s'ancreront dans l'imaginaire des premiers lecteurs et deviendront un immense cliché. Ces clichés seront d'ailleurs repris ironiquement dans les deux dernières comédies de 2006 et 2009 qui en regorgent.
                          Origines familiales

                          Les ancêtres d'Hubert Bonisseur de La Bath, des gentilshommes, viennent de France et ont immigré en Louisiane aux États-Unis, en 1789, époque à laquelle la Louisiane était espagnole et non plus française, cette allusion à l'affluence d'Européens dans ce « nouveau monde » peut expliquer le fait que dans les deux dernières comédies de 2006 et 2009, OSS 117 travaillerait pour la France3.
                          Mission

                          Il a pour mission d'œuvrer pour le bien dans un environnement de guerre froide toujours brouillé et peuplé d'espions, de nazis, de Chinois, de Russes... organisés en mafias et organisations de malfaiteurs en tous genres, mais aussi de jeunes et jolies femmes dont certaines deviennent vite ses conquêtes amoureuses, qu'elles soient ses alliées ou non...
                          Employeur

                          Il travaille tout d'abord pour l'Office of Strategic Services, service de renseignements américain, puis, toujours sous le grade de colonel, rentre à la Central Intelligence Agency remplaçant l'OSS. Il termine sa carrière pour le National Security Council, organisme qui dirige les services de renseignements US, sous la direction du Général Stanford.

                          Néanmoins, du fait des lointaines origines françaises de OSS 117 évoquées plus haut, dans les deux derniers films plus parodiques, sortis en 2006 et 2009, les auteurs ont décidé de faire du personnage un citoyen français et de le faire travailler pour les services secrets français des Présidents René Coty et Charles de Gaulle, le Service de documentation extérieure et de contre-espionnage.")
character4.project = project1
character4.save!

scene1 = Scene.new(title: "Scene stylée", number: 1, content: "Ceci est une scène d'amour entre superchiotte et Jean Valjean")
scene1.project = project1
scene1.save!

scene2 = Scene.new(title: "Scene mega stylée", number: 2, content: "Ceci est une scène qui se passe dans l'espace")
scene2.project = project1
scene2.save!

scene3 = Scene.new(title: "Rebondissement innatendu", number: 3, content: "Dans cette scène, l'enfant-tronc que tout le monde méprisait prend sa revanche sur le monde en remportant de manière épique un combat de boxe contre le champion du monde en titre.")
scene3.project = project1
scene3.save!

scene4 = Scene.new(title: "Scene mega stylée", number: 1, content: "Ceci est une scène qui se passe dans l'espace")
scene4.project = project2
scene4.save!

mood1 = Mood.new()
mood1.project = project1
mood1.save!

mood2 = Mood.new()
mood2.project = project2
mood2.save!

file = URI.open('https://meme.eq8.eu/noidea.jpg')
mooditem1 = Mooditem.new(left: 0, top: 0)
mooditem1.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
mooditem1.mood = mood1
mooditem1.save!

puts "Super seeds, finished, thanks for your time."
