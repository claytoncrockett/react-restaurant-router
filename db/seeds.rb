# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  restaurant = Restaurant.create(
    name: Faker::Simpsons.location
  )

    3.times do
      menu = restaurant.menus.create(
        name: ["Breakfast", "Brunch", "Lunch", "Afternoon", "Dinner", "Dessert"].sample
      )
      
        10.times do
          menu.items.create(
            name: Faker::Food.dish,
            price: Faker::Number.between(1, 50),
            description: Faker::Hipster.sentence
          )
        end
    end
end