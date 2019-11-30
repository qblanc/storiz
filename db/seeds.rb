# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start seeding super seeds..."
Character.destroy_all
Scene.destroy_all
Project.destroy_all
User.destroy_all
Mood.destroy_all
Mooditem.destroy_all



user2 = User.new(email: "grrmartin@gmail.com", password: "azerty")
user2.save!

user1 = User.new(email: "quentin.blanc@gmail.com", password: "123456789AZERTYU")
user1.save!

project1 = Project.new(title: "Le petit Cheval de Manège", pitch: "Un super livre", category: "TV Show", synopsis: "Coucou les gens")
project1.user = user1
project1.save!

project2 = Project.new(title: "La gomme magique", pitch: "Super books", category: "Book", synopsis: "Une gomme devient magique parce que c'est comme ca, fin.")
project2.user = user1
project2.save!

character1 = Character.new(first_name: "Jean", last_name: "Valjean", birthdate: Time.now, genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character1.project = project1
character1.save!

character2 = Character.new(first_name: "Francois", last_name: "Pignon", birthdate: Time.now, genre: "Female", description: "Il est mignon monsieur Pignon.")
character2.project = project1
character2.save!


character3 = Character.new(first_name: "Pierre", last_name: "Brochant", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Il est méchant monsieur Brochant.")
character3.project = project1
character3.save!

character4 = Character.new(first_name: "Hubert", last_name: "Bonnisseur de la Bath", birthdate: Time.now, genre: "Male", description: "Hubert Bonisseur de La Bath était un solide gaillard à la carrure athlétique de sportif en pleine possession de ses moyens, au visage énergique et buriné de prince pirate. Son regard clair, à l'ironie tranquille, se posait sur les êtres et les choses avec cette assurance née d'une vie riche en aventures. Son charme ne laissait aucune femme insensible.
                                                                                                                                       Un homme de haute taille, bâti en athlète, avec de larges épaules musclées, qui avait l'assurance d'un champion et l'allure d'un prince. [...] Un visage d'aventurier comme [on] n'en avait vu qu'au cinéma, avec un nez droit et des lèvres sensuelles, des cheveux châtains coupés très court et des yeux bleus dont on soutenait difficilement le regard. »
                                                                                                                                       Ainsi, il a toutes les caractéristiques plus ou moins réalistes de l'espion, qui s'ancreront dans l'imaginaire des premiers lecteurs et deviendront un immense cliché. Ces clichés seront d'ailleurs repris ironiquement dans les deux dernières comédies de 2006 et 2009 qui en regorgent.
                                                                                                                                       Origines familiales
                                                                                                                                       Les ancêtres d'Hubert Bonisseur de La Bath, des gentilshommes, viennent de France et ont immigré en Louisiane aux États-Unis, en 1789, époque à laquelle la Louisiane était espagnole et non plus française, cette allusion à l'affluence d'Européens dans ce « nouveau monde » peut expliquer le fait que dans les deux dernières comédies de 2006 et 2009, OSS 117 travaillerait pour la France3.
                                                                                                                                       Mission
                                                                                                                                       Il a pour mission d'œuvrer pour le bien dans un environnement de guerre froide toujours brouillé et peuplé d'espions, de nazis, de Chinois, de Russes... organisés en mafias et organisations de malfaiteurs en tous genres, mais aussi de jeunes et jolies femmes dont certaines deviennent vite ses conquêtes amoureuses, qu'elles soient ses alliées ou non...
                                                                                                                                       Employeur
                                                                                                                                       Il travaille tout d'abord pour l'Office of Strategic Services, service de renseignements américain, puis, toujours sous le grade de colonel, rentre à la Central Intelligence Agency remplaçant l'OSS. Il termine sa carrière pour le National Security Council, organisme qui dirige les services de renseignements US, sous la direction du Général Stanford.")

character4.project = project1
character4.save!

character6 = Character.new(first_name: "Barbe", last_name: "Bleue", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character6.project = project1
character6.save!

character7 = Character.new(first_name: "Raymond", last_name: "Depardon", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character7.project = project1
character7.save!

character8 = Character.new(first_name: "Robbie", last_name: "Williams", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Chante de la grosse daube")
character8.project = project1
character8.save!

character9 = Character.new(first_name: "Joséphine", last_name: "Bonaparte", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Female", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character9.project = project1
character9.save!

character10 = Character.new(first_name: "Mireille", last_name: "Matthieu", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Une avant-gardiste capillaire de grand talent vocal. Accessoirement une philosophe de comptoir. Elle aimait les bulots à la mayo maison et les huîtres chaudes à la béchamel.")
character10.project = project1
character10.save!

character11 = Character.new(first_name: "Archibald", last_name: "De la Tour du Pain", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character11.project = project1
character11.save!

character12 = Character.new(first_name: "Jim", last_name: "Carrey", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character12.project = project1
character12.save!

character13 = Character.new(first_name: "Victor", last_name: "Hugo", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "L'auteur de cette histoire, merci Vic")
character13.project = project1
character13.save!

character14 = Character.new(first_name: "Romorantin", last_name: "Jeannot", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Female", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character14.project = project1
character14.save!

character15 = Character.new(first_name: "Theo", last_name: "Jason", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character15.project = project1
character15.save!

character16 = Character.new(first_name: "Briac", last_name: "Maird", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character16.project = project1
character16.save!

character17 = Character.new(first_name: "Jean", last_name: "Bon", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character17.project = project1
character17.save!

character18 = Character.new(first_name: "Vincent", last_name: "Tim", birthdate: "Thu, 29 Apr 1954 11:10:03 UTC +00:00", genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character18.project = project1
character18.save!


scene1 = Scene.new(title: "Ouverture", number: 1, content: "Ceci est une scène d'amour entre François Pignon et Jean Valjean")
scene1.project = project1
scene1.save!

scene2 = Scene.new(title: "Présentation", number: 2, content: "Ceci est une scène qui se passe dans l'espace")
scene2.project = project1
scene2.save!

scene3 = Scene.new(title: "Rebondissement inattendu", number: 3, content: "Dans cette scène, l'enfant-tronc que tout le monde méprisait prend sa revanche sur le monde en remportant de manière épique un combat de boxe contre le champion du monde en titre.")
scene3.project = project1
scene3.save!

scene4 = Scene.new(title: "Retournement", number: 4, content: "Le manège tourne dans l'autre sens")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Francois P. tue Jean V.", number: 5, content: "Francois P. tue Jean V.")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Scene finale - Le cheval fait du poney", number: 7, content: "Ceci est une scène qui se passe dans l'espace")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Scène super finale - La poney fait du manège avec le cheval sur le dos", number: 8, content: "Ceci est une scène qui se passe dans l'espace")
scene4.project = project1
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
