# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  age = rand(1..100)
  bmi = rand(20..25)
  Patient.create(name: Faker::Name.name, age: age, bmi: bmi, phone_number: Faker::PhoneNumber.phone_number)
end
