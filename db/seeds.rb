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

scene1 = Scene.new(title: "Scene stylée", number: 1, content: "Ceci est une scène d'amour entre superchiotte et Jean Valjean")
scene1.project = project1
scene1.save!

scene2 = Scene.new(title: "Scene mega stylée", number: 2, content: "Ceci est une scène qui se passe dans l'espace")
scene2.project = project1
scene2.save!

puts "Super seeds, finished, thanks for your time."
