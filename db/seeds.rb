require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
puts 'database is clean'
Restaurant.destroy_all
puts 'creating Restaurants'
100.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts 'restaurants are created'
end
