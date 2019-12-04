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

################################################################ USER 1 ################################################################

user1 = User.new(email: "tarantinus@gmail.com", password: "azerty")
user1.save!

################################## PROJECTS ####################################

project1 = Project.new(title: "Reservoir Dogs", pitch: "After a robbery is interrupted by the police, the surviving criminals — all of whom are using color-based pseudonyms, and none of whom knew the others before this job — escape to an abandoned warehouse and try to work out what went wrong, eventually deciding that there must be an undercover cop in their midst.", category: "Movie", synopsis: "Do we really need that shit ?")
project1.user = user1

################################# CHARACTERS ###################################

character1 = Character.new(first_name: "Larry", last_name: "Dimmick", birthdate: Time.now, genre: "Male", description: "Mr. White. Originally from Milwaukee, Minnesota, he's brought on Joe Cabot's current jewelry heist through prior association. Yet, he has reserves about doing it, because he feels he's jinxed. The last job he worked on, almost got him pinched by the cops. Dimmick becomes a sort of surrogate father to young recruit Mr. Orange as they plan the job over a few days. The two become so close that he lets detials of his personal life slip like his hometown and his specialty as a criminal.")
character1.project = project1
file1 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575391869/WHIIITE_qwvtbl.png')
character1.photo.attach(io: file1, filename: "Larry.jpg", content_type: 'image/jpg')
character1.save!

character2 = Character.new(first_name: "Freddy", last_name: "Newandyke", birthdate: Time.now, genre: "Male", description: "Mr. Orange. He is an undercover police officer who is assigned to infilitrate Joe Cabot's latest jewelry heist. In the midst of this heist is a ragtag team of ex-felons including Mr. White (revealed to really be Larry Dimmick), whom they also have a sheet on. Conflict of interests arise when Mr. Orange has a father-son relationship with Mr. White. Mr. Orange is the alias of an undercover police officer named Freddy Newandyke who is assigned to infilitrate Joe Cabot's latest jewelry heist. In the midst of this heist is a ragtag team of ex-felons including Mr. White (revealed to really be Larry Dimmick), whom they also have a sheet on. Conflict of interests arise when Mr. Orange has a father-son relationship with Mr. White.")
character2.project = project1
file2 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382304/Reservoir%20Dogs%20Characters/Mr._Orange_wvehin.jpg')
character2.photo.attach(io: file2, filename: "Freddy.jpg", content_type: 'image/jpg')
character2.save!

character3 = Character.new(first_name: "Vic", last_name: "Vega", birthdate: Time.now, genre: "Male", description: "Mr. Blonde. He's a recently paroled career criminal hired by a gangster named Joe Cabot to perform a jewelry heist with a team of professional thieves. During the robbery, he makes good on a threat to massacre the entire store after the alarm had been tripped, forcing the team to flee to the designated safehouse. He takes police officer Marvin Nash hostage as he escapes. At the safehouse, he gets into a confrontation with fellow robbers Mr. White and Mr. Pink over whether or not to help their compatriot Mr. Orange, who has been badly wounded.")
character3.project = project1
file3 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382304/Reservoir%20Dogs%20Characters/Mr._Blonde_gnvgnj.jpg')
character3.photo.attach(io: file3, filename: "Vic.jpg", content_type: 'image/jpg')
character3.save!

character4 = Character.new(first_name: "Mr.", last_name: "Pink", birthdate: Time.now, genre: "Male", description: "He has known Joe Cabot as a youth and believed that Joe had something to do with the set-up. He recalls one time when he wanted to refuse to do a job but didn't because of the money. He quit smoking, but restarted it during the film. When given his name 'Mr. Pink', he objects and says how it sounds like 'Mr. Pussy', and requests to have his name changed to something less weak like 'Mr. Purple', or to trade names with Mr. White.")
character4.project = project1
file4 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575391869/PINKY_ofhayq.png')
character4.photo.attach(io: file4, filename: "Pink.jpg", content_type: 'image/jpg')
character4.save!

character5 = Character.new(first_name: "Eddie", last_name: "Cabot", birthdate: Time.now, genre: "Male", description: "Nice Guy Eddie Cabot is the son of crime boss Joe Cabot who plan a heist on a jewellery store with 6 other men. Out of the men Eddie and his family are friendly with are Mr. White and Mr. Blonde, the latter whom Eddie appears to have a close friendship with. After recruiting and giving the gang of men their color coded nicknames, they head off for breakfast before the heist. However the heist goes wrong when the cops show up early and Mr. Blonde goes crazy and shoots dead the hostages.")
character5.project = project1
file5 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382305/Reservoir%20Dogs%20Characters/Eddit_Cabot_svvi28.jpg')
character5.photo.attach(io: file5, filename: "Eddie.jpg", content_type: 'image/jpg')
character5.save!

character6 = Character.new(first_name: "Joe", last_name: "Cabot", birthdate: Time.now, genre: "Male", description: "Joe Cabot is a criminal mastermind and crime boss that specializes in armed robberies, hijackings, and moving and selling stolen property. Cabot puts together jobs, along with his son 'Nice Guy' Eddie Cabot, by recruiting different career criminals and planning out the details of each robbery. Cabot serves as the main antagonist of the movie.")
character6.project = project1
file6 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382304/Reservoir%20Dogs%20Characters/Joe_Cabot_qgbxnp.jpg')
character6.photo.attach(io: file6, filename: "Cabot.jpg", content_type: 'image/jpg')
character6.save!

character7 = Character.new(first_name: "Mr.", last_name: "Brown", birthdate: Time.now, genre: "Male", description: "Mr. Brown got shot in the head by a police officer, which blinds him but does not immediately kill him. Mr. Brown, Mr. White, and Mr. Orange get into a car to escape the area, but they crash because Mr. Brown was driving and unable to see. A police car arrives at the scene, and as Mr. White shoots at the police officers Mr. Orange notices that Mr. Brown dies from his injuries.")
character7.project = project1
file7 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382304/Reservoir%20Dogs%20Characters/Mr._Brown_uzqnt9.jpg')
character7.photo.attach(io: file7, filename: "Brown.jpg", content_type: 'image/jpg')
character7.save!

character8 = Character.new(first_name: "Marvin", last_name: "Nash", birthdate: Time.now, genre: "Male", description: "gets captured by Mr. Blonde during the robbery, and is put into the trunk of his car. Mr. White and Mr. Pink laughs when Mr. Blonde opens the trunk to see him there. He was thought to be used for questioning about the setup. He gets thrown in the warehouse and gets beaten up by them. He eventually gets tied up in a chair, and denies that he knows anything about the setup. He says how he won't tell them anything if he gets let go, only to get punched by Mr. Pink.")
character8.project = project1
file8 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382304/Reservoir%20Dogs%20Characters/Officer_wazjnt.png')
character8.photo.attach(io: file8, filename: "Nash.jpg", content_type: 'image/jpg')
character8.save!

character9 = Character.new(first_name: "Inspector", last_name: "Holdaway", birthdate: Time.now, genre: "Male", description: "He is a cop, who teaches Freddy Newendyke aka Mr. Orange how to go undercover and infiltrate Joe Cabot's organization.")
character9.project = project1
file9 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382305/Reservoir%20Dogs%20Characters/Holdaway_zgrjq0.png')
character9.photo.attach(io: file9, filename: "Holdaway.jpg", content_type: 'image/jpg')
character9.save!

character10 = Character.new(first_name: "Mr.", last_name: "Blue", birthdate: Time.now, genre: "Male", description: "He is one of the six robbers in a diamond heist that goes wrong. He smokes cigars, and his death is unknown until the end of the film, where Joe Cabot says that he was killed by the cops.")
character10.project = project1
file10 = file = URI.open('https://res.cloudinary.com/diewz4u97/image/upload/v1575382305/Reservoir%20Dogs%20Characters/Mr._Blue_vrs8cd.jpg')
character10.photo.attach(io: file10, filename: "Blue.jpg", content_type: 'image/jpg')
character10.save!

################################### SCENES #####################################

scene1 = Scene.new(title: "Scene 1", number: 1, content: "Scene 1")
scene1.project = project1
scene1.save!

scene2 = Scene.new(title: "Scene 2", number: 2, content: "Scene 2")
scene2.project = project1
scene2.save!

scene3 = Scene.new(title: "Scene 3", number: 3, content: "Scene 3")
scene3.project = project1
scene3.save!

scene4 = Scene.new(title: "Scene 4", number: 4, content: "Scene 4")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Scene 5", number: 5, content: "Scene 5")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Scene 6", number: 6, content: "Scene 6")
scene4.project = project1
scene4.save!

scene4 = Scene.new(title: "Scene 7", number: 7, content: "Scene 7")
scene4.project = project1
scene4.save!

#################################### MOOD ######################################

# mood1 = Mood.new()
# mood1.project = project1
# mood1.save!

# file = URI.open('https://meme.eq8.eu/noidea.jpg')
# mooditem1 = Mooditem.new(left: 0, top: 0)
# mooditem1.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# mooditem1.mood = mood1
# mooditem1.save!

################################################################ USER 2 ################################################################

user2 = User.new(email: "grrmartin@gmail.com", password: "azerty")
user2.save!

################################## PROJECTS ####################################

project2 = Project.new(title: "La gomme magique", pitch: "La gomme errait, seule, ignorant le super pouvoir qui sommeillait en elle.", category: "Book", synopsis: "Une gomme devient magique parce que c'est comme ca, fin.")
project2.user = user2
project2.save!

################################# CHARACTERS ###################################

character21 = Character.new(first_name: "Jean", last_name: "Valjean", birthdate: Time.now, genre: "Male", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
character21.project = project2
character21.save!

################################### SCENES #####################################

scene21 = Scene.new(title: "Ouverture", number: 1, content: "Ceci est une scène d'amour entre François Pignon et Jean Valjean")
scene21.project = project2
scene21.save!

#################################### MOOD ######################################

mood2 = Mood.new()
mood2.project = project2
mood2.save!

################################################################ FIN ################################################################
project1.save!

puts "Super seeds, finished, thanks for your time."
