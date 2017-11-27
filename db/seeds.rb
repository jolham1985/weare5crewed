# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

root = Question.create(content: "Is this the kind of appliance whose photo you just took?")
lamp = root.children.create(content: "lamp")
lamp.children.create(content: "1")
15.times do |i|
  i += 1
  node = Question.find_by(content: "#{i}")
  node.children.create(content:"#{i*2}", answer: true)
  node.children.create(content:"#{i*2 + 1}", answer: false)
end

# Adding Users
User.create(email: "landlord@example.com", password: "qwerty", role: "landlord")
User.create(email: "tenant@example.com", password: "qwerty", role: "tenant")

# Adding Apartment
Apartment.create(address: "rua moeda 7, cais do sodre", landlord_id: "1", tenant_id: "2")
Apartment.create(address: "rua direita, lisboa", landlord_id: "1", tenant_id: "")
Apartment.create(address: "avenida da liberdade, lisboa", landlord_id: "1", tenant_id: "")

# Adding Categories

Category.create(name: "electric")
Category.create(name: "water")
