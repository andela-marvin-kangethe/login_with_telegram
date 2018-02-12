# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times {
  Book.create(
    name:        Faker::Book.title,
    author:      Faker::Book.author,
    publisher:   Faker::Book.publisher,
    rating:      Array(1..10).sample,
    genre:       Faker::Book.genre
  )
}