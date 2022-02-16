# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all restaurants'

Restaurant.destroy_all

puts 'Creating 50 restaurants'

50.times do
  Restaurant.create(name: Faker::Restaurant.name,
                    category: Faker::Restaurant.type,
                    address: Faker::Address.street_address,
                    phone_number: Faker::PhoneNumber.cell_phone)
end

puts "Created #{Restaurant.count} restaurants"
