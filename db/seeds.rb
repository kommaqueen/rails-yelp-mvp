# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

5.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.create(address: Faker::Address.street_address, name: Faker::Restaurant.name, phone_number: Faker::PhoneNumber.cell_phone, category: category.sample)
end

puts "Finished"
