# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'creating users'

User.create([
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name ,
        username: "starter",
        email: "jsmith@example.com",
        password: "123",
        admin: true
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: "closer",
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    },
    {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: "ssmith@example.com",
        password: "123",
        admin: false
    }
])
puts 'finished creating users'
puts 'seeding bread'
Bread.create([
    {
        title: "Country Loaf",
        description: "Classic sourdough loaf",
        price: 10
    },
    {
        title: "Herb Loaf",
        description: "Classic sourdough loaf with sage, rosemary and thyme. Brushed with herb olive oil.",
        price: 10
    },
    {
        title: "Olive Fougasse",
        description: "Baguette dough mixed with olives and shaped into a fougasse.",
        price: 6
    },
    {
        title: "Bagel",
        description: "Plain bagel, one per order",
        price: 2
    },
])
puts 'finished creating breads'

puts 'seeding orders'

Order.create([
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    },
    {
        bread_id: Bread.ids.sample,
        user_id: User.ids.sample,
        quantity: rand(1..5),
        completed: Faker::Boolean.boolean(true_ratio: 0.1)
    }
])

puts 'finished seeding orders!'