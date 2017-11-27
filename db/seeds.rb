root = Question.create(content: "Is this the kind of appliance whose photo you just took?")
lamp = root.children.create(content: "lamp")
question_1 = lamp.children.create(content: "Is the appliance turning on?")
# 15.times do |i|
#   i += 1
#   node = Question.find_by(content: "#{i}")
#   node.children.create(content:"#{i*2}", answer: true)
#   node.children.create(content:"#{i*2 + 1}", answer: false)
# end

question_2 = question_1.children.create(content:"Is it flickering?", answer: true)
question_4 = question_2.children.create(content:"Try tightnening up the bulb a little", answer: true)
question_5 = question_2.children.create(content:"If it's turning off randomly, try to switch the bulp for a new one", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Have you changed the bulb or the fuse?", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)


# Adding Users
landlord = User.create(email: "landlord@example.com", password: "qwerty", role: "landlord")
tenant = User.create(email: "tenant@example.com", password: "qwerty", role: "tenant")

# Adding Apartment
Apartment.create(address: "rua moeda 7, cais do sodre", landlord: landlord, tenant: tenant)
Apartment.create(address: "rua direita, lisboa", landlord: landlord)
Apartment.create(address: "avenida da liberdade, lisboa", landlord: landlord)


# Adding Categories

Category.create(name: "electric")
Category.create(name: "water")
