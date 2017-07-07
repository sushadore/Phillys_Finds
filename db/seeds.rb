# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all


12.times do |index|
  product = Product.create!(name: Faker::Food.spice + " " + Faker::Music.unique.instrument, price: Faker::Number.decimal(2), description: Faker::Company.bs)
    3.times do |index|
      product.reviews.create(author: Faker::Name.name, content: Faker::ChuckNorris.fact, rating: Faker::Number.between(1,5))
    end
end
