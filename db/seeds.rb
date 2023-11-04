# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurant_name = ['Bela Italia', 'Cordon Bleu', 'Papa Açorda', 'El Buli', "El Dorado"]
categories = %w(chinese italian japanese french belgian)
addresses = %w(Amsterdam Lisbon Rotterdam DenHaag Haarlem)

restaurant_name.each do |restaurant|
  Restaurant.create!(
    name: restaurant,
    address: addresses.sample,
    phone_number: '000 0000 0000',
    category: categories.sample
  )
end
