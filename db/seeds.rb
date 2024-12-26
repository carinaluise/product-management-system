# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
Product.destroy_all

# Create products
products = [
  { name: 'Alpha', description: 'Unique description for gadget Alpha', inventory_count: 10, price: 19.99 },
  { name: 'Beta', description: 'Unique description for gadget Beta', inventory_count: 15, price: 29.99 },
  { name: 'Gamma', description: 'Unique description for gadget Gamma', inventory_count: 20, price: 39.99 },
  { name: 'Delta', description: 'Unique description for gadget Delta', inventory_count: 25, price: 49.99 },
  { name: 'Epsilon', description: 'Unique description for gadget Epsilon', inventory_count: 30, price: 59.99 },
  { name: 'Zeta', description: 'Unique description for gadget Zeta', inventory_count: 35, price: 69.99 },
  { name: 'Eta', description: 'Unique description for gadget Eta', inventory_count: 40, price: 79.99 },
  { name: 'Theta', description: 'Unique description for gadget Theta', inventory_count: 45, price: 89.99 },
  { name: 'Iota', description: 'Unique description for gadget Iota', inventory_count: 50, price: 99.99 },
  { name: 'Kappa', description: 'Unique description for gadget Kappa', inventory_count: 55, price: 109.99 },
  { name: 'Lambda', description: 'Unique description for gadget Lambda', inventory_count: 60, price: 119.99 },
  { name: 'Mu', description: 'Unique description for gadget Mu', inventory_count: 65, price: 129.99 },
  { name: 'Nu', description: 'Unique description for gadget Nu', inventory_count: 70, price: 139.99 },
  { name: 'Xi', description: 'Unique description for gadget Xi', inventory_count: 75, price: 149.99 },
  { name: 'Omicron', description: 'Unique description for gadget Omicron', inventory_count: 80, price: 159.99 },
  { name: 'Pi', description: 'Unique description for gadget Pi', inventory_count: 85, price: 169.99 },
  { name: 'Rho', description: 'Unique description for gadget Rho', inventory_count: 90, price: 179.99 },
  { name: 'Sigma', description: 'Unique description for gadget Sigma', inventory_count: 95, price: 189.99 },
  { name: 'Tau', description: 'Unique description for gadget Tau', inventory_count: 100, price: 199.99 },
  { name: 'Upsilon', description: 'Unique description for gadget Upsilon', inventory_count: 105, price: 209.99 },
  { name: 'Phi', description: 'Unique description for gadget Phi', inventory_count: 110, price: 219.99 },
  { name: 'Chi', description: 'Unique description for gadget Chi', inventory_count: 115, price: 229.99 },
  { name: 'Psi', description: 'Unique description for gadget Psi', inventory_count: 120, price: 239.99 },
  { name: 'Omega', description: 'Unique description for gadget Omega', inventory_count: 125, price: 249.99 },
  { name: 'Alpha 2', description: 'Unique description for gadget Alpha 2', inventory_count: 130, price: 259.99 },
  { name: 'Beta 2', description: 'Unique description for gadget Beta 2', inventory_count: 135, price: 269.99 },
  { name: 'Gamma 2', description: 'Unique description for gadget Gamma 2', inventory_count: 140, price: 279.99 },
  { name: 'Delta 2', description: 'Unique description for gadget Delta 2', inventory_count: 145, price: 289.99 },
  { name: 'Epsilon 2', description: 'Unique description for gadget Epsilon 2', inventory_count: 150, price: 299.99 },
  { name: 'Zeta 2', description: 'Unique description for gadget Zeta 2', inventory_count: 155, price: 309.99 },
  { name: 'Eta 2', description: 'Unique description for gadget Eta 2', inventory_count: 160, price: 319.99 },
]

Product.create(products)

puts "Seeded #{Product.count} products."