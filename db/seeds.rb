# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
romandie = { name: "Le Romandie", address: "Place St-François 8, 1000 Lausanne", phone_number: "0213101010", category: "french"}
cafebouchers = { name: "Le Café des Bouchers", address: "Rue de Lausanne 25, 1008 Prilly", phone_number: "0213112233", category: "french"}
gambatte = { name: "La gambatte", address: "Rue St-Roch 12, 1003 Lausanne", phone_number: "0213223344", category: "Chinese"}
lsnemoudon = { name: "Le Lausanne-Moudon", address: "Place du Tunnel 5, 1005 Lausanne", phone_number: "0213405060", category: "french"}
bruxelle = { name: "Le Bruxelle Café", address: "Place de la Riponne 3, 1005 Lausanne", phone_number: "0213506079", category: "belgian"}
chezantonio = { name: "Chez Antonio", address: "Rue Marterey 15, 1003 Lausanne", phone_number: "0213607080", category: "italian"}
chezxu = { name: "Chez Xu", address: "Place St-François 2, 1000 Lausanne", phone_number: "0213708090", category: "japanese"}

[ romandie, cafebouchers, gambatte, lsnemoudon, bruxelle, chezantonio, chezxu ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
