# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Review.destroy_all
Restaurant.destroy_all
puts 'Database cleaned.'

puts 'Creating restaurants and reviews...'

Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french")

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")

Restaurant.create!(name: "Wagamama", address: "17 Flufy St, London E3 6JE", category: "japanese")

nandos = Restaurant.create!(name: "Nandos", address: "5 Balham High St, London SW1 6PQ", category: "italian")

Restaurant.create!(name: "Pasta-Pizza", address: "23 Oxford St, London WC1 7JE", category: "french")

Restaurant.create!(name: "Central", address: "5A Regents  St, London W1 6PQ", category: "italian")


puts "Finished! Created #{Restaurant.count} restaurants."

Review.create!(content: "test review", rating: 1, restaurant: nandos )
