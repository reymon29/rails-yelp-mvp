# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants..'

restaurants_items = [
  {
  name: 'Look Room',
  address: 'Somewhere in Japan',
  phone_number: '2322222222222',
  category: 'chinese'
  },
  {
  name: 'Le Pain',
  address: 'Somewhere in France',
  phone_number: '88888888888',
  category: 'french'
  },
  {
  name: 'Hola Casa',
  address: 'Somewhere in Italy',
  phone_number: '999999999',
  category: 'italian'
  },
  {
  name: 'Belgian cafe',
  address: 'Somewhere in Belgian',
  phone_number: '8888888888',
  category: 'belgian'
  },
   {
  name: 'Sushi cafe',
  address: 'Somewhere in Japan',
  phone_number: '7777777777',
  category: 'japanese'
  }
]
Restaurant.create!(restaurants_items)
puts 'Finished!'
