# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# puts Faker::Name.name
puts 'creating users'
User.create([{
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name ,
    username: "jSmith",
    email: "jsmith@example.com",
    password_digest: "123"
},
{
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: "sSmith",
    email: "ssmith@example.com",
    password_digest: "123"
}
])


puts 'finished creating users'