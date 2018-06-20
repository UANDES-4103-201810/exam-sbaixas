# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mozzarella = Ingredient.create(name: "Mozzarella")
tomato = Ingredient.create(name: "Tomato")
pepperoni = Ingredient.create(name: "Pepperoni")
olives = Ingredient.create(name: "Olives")
onion = Ingredient.create(name: "Onion")
artichokes = Ingredient.create(name: "Artichokes")
mushrooms = Ingredient.create(name: "Mushrooms")
ham = Ingredient.create(name: "Ham")
shrimp = Ingredient.create(name: "Shrimp")
pineapple = Ingredient.create(name: "Pineapple")
Crust.create(name: "thin", price: 2)
Crust.create(name: "Regular", price: 4)
hawaian_pizza = Recipe.create(name: "Hawaian" , price: 20)
RecipeIngredient.create(recipe: hawaian_pizza, ingredient: pineapple)
RecipeIngredient.create(recipe: hawaian_pizza, ingredient: ham)
RecipeIngredient.create(recipe: hawaian_pizza, ingredient: mozzarella)
pepperoni_pizza = Recipe.create(name: "Pepperoni", price: 15)
RecipeIngredient.create(recipe: pepperoni_pizza, ingredient: pepperoni)
RecipeIngredient.create(recipe: pepperoni_pizza, ingredient: mozzarella)
meat_pizza = Recipe.create(name: "Meat Lover's", price: 25)
RecipeIngredient.create(recipe: meat_pizza, ingredient: pepperoni)
RecipeIngredient.create(recipe: meat_pizza, ingredient: mozzarella)
RecipeIngredient.create(recipe: meat_pizza, ingredient: ham)

