# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Park.create(name: Faker::Pokemon.location, description: "everyone comes here to run", picture: Faker::LoremPixel.image("300x100", false, 'nature'))
end
