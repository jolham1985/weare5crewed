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
landlord = User.create(email: "landlord@example.com", password: "qwerty", role: "landlord")
tenant = User.create(email: "tenant@example.com", password: "qwerty", role: "tenant")

# Adding Apartment
Apartment.create(address: "rua moeda 7, cais do sodre", landlord: landlord, tenant: tenant)
Apartment.create(address: "rua direita, lisboa", landlord: landlord, tenant_id: tenant)
Apartment.create(address: "avenida da liberdade, lisboa", landlord: landlord, tenant: tenant)

# Adding Categories

Category.create(name: "electric")
Category.create(name: "water")
