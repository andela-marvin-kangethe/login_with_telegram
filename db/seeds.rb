# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD

User.destroy_all
Skill.destroy_all

10.times do
  User.create do |user|
    user.name   =   Faker::Name.name
    user.salary =   Faker::Number.decimal(3, 2)
    5.times do
      user.skill.new(
        name:   Faker::ProgrammingLanguage.name,
        level:  ["Beginner", "Intermediate", "Senior", "Advanced"].sample
      )
    end
  end
end
=======
>>>>>>> 71425c4... Initial commit
