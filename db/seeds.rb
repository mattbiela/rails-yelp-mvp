# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts 'Cleaning database...'
Restaurant.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cate = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  restaurant = Restaurant.new(
    name: Faker::Food.sushi,
    address: Faker::Address.street_address,
    category: cate.sample
  )
  restaurant.save!
end

puts 'Finished!'
