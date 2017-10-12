# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning database...'
Restaurant.destroy_all

puts 'creating restaurants...'

restaurants_list = [
{
  name: "learo",
  address: "rue de la der",
  phone_number: "02.731.38.14",
  category: "chinese"
  },
{
  name: "fino",
  address: "chemin de ftyuip",
  phone_number: "02.731.38.14",
  category: "belgian"
  },
{
  name: "gaspiuk",
  address: "avenue de fred",
  phone_number: "02.731.38.14",
  category: "french"
  },
{
  name: "titian",
  address: "rue de lop",
  phone_number: "02.731.38.14",
  category: "italian"
  },
{
  name: "delbi",
  address: "avenue de la prem",
  phone_number: "02.731.38.14",
  category: "chinese"
}
]

Restaurant.create!(restaurants_list)
puts 'finished!'
