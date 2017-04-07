# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "whisky")
Ingredient.create(name: "ram")
Ingredient.create(name: "water")
Ingredient.create(name: "gin")
puts "Created the ingredients!"

Cocktail.destroy_all
lj = Cocktail.create(name: "lemon juice")
puts "Created the cocktail!"

Dose.destroy_all
Dose.create(cocktail: lj, ingredient: ice, description: "Shaken, Not Stirred")
Dose.create(cocktail: lj, ingredient: lemon, description: "Put")
puts "Created the doses"
