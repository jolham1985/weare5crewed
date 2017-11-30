puts "Destroy all records"

Question.destroy_all
Issue.destroy_all
Apartment.destroy_all
User.destroy_all
Category.destroy_all
Engineer.destroy_all

puts "Seeding!"

root = Question.create(content: "Is this the kind of appliance whose photo you just took?")
lamp = root.children.create(content: "lamp")
question_1 = lamp.children.create(content: "Does the lamp turn on?")
# 15.times do |i|
#   i += 1
#   node = Question.find_by(content: "#{i}")
#   node.children.create(content:"#{i*2}", answer: true)
#   node.children.create(content:"#{i*2 + 1}", answer: false)
# end

question_2 = question_1.children.create(content:"Is it flickering?", answer: true)

question_4 = question_2.children.create(content:"Did you try tightening the light bulb? ", answer: true)
question_5 = question_2.children.create(content:"Did you try to see if the fuse in the wall is blown (don't forget to cut the electricity first)?", answer: false)

question_3 = question_1.children.create(content:"Is the lamp plugged in?", answer: false)

question_6 = question_3.children.create(content:"Did you try screwing the light bulb?", answer: true)
question_7 = question_3.children.create(content:"Is it working now?", answer: false)

question_8 = question_4.children.create(content:"Is the main wire naked or damaged?", answer: true)
question_9 = question_4.children.create(content:"Did you try to switch the bulb for a new one?", answer: false)

question_10 = question_5.children.create(content:"Is there other appliances not working around?", answer: true)
question_11 = question_5.children.create(content:"Is it working with the new bulb?", answer: false)

question_12 = question_6.children.create(content:"Did you try replacing the light bulb?", answer: true)
question_13 = question_6.children.create(content:"Did you try replacing the light bulb?", answer: false)

question_14 = question_7.children.create(content:"Did you try switching the bulb to a new one?", answer: true)
question_15 = question_7.children.create(content:"Is it working ok now?", answer: false)

question_16 = question_8.children.create(content:"You should transfer to an engineer to fix it for you", answer: true)
question_17 = question_8.children.create(content:"Is there other appliances not lightening?", answer: false)

question_18 = question_9.children.create(content:"Is the main wire naked or damaged?", answer: true)
question_19 = question_9.children.create(content:"Is it working ok now?", answer: false)

question_20 = question_10.children.create(content:"Did you check the general fuse panel to see if some might be blown or stripped?", answer: true)
question_21 = question_10.children.create(content:"Is the wire naked or damaged?", answer: false)

kettle = root.children.create(content: "kettle")
question_1 = kettle.children.create(content: "Is the kettle turning on?")

question_2 = question_1.children.create(content:"Is the kettle heating water?", answer: true)
question_4 = question_2.children.create(content:"Is the kettle leaking?", answer: true)
question_5 = question_2.children.create(content:"Did you try to descale your kettle using white-vinegar", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Is the external wire damaged?", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)

microwave = root.children.create(content: "microwave")
question_1 = microwave.children.create(content: "Is the micro-wave turning on?")

question_2 = question_1.children.create(content:"Is there sparkles in it when turned on?", answer: true)
question_4 = question_2.children.create(content:"Did you check if nothing metallic has remain inside", answer: true)
question_5 = question_2.children.create(content:"Is it heating at the right temperature?", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Is the external wire damaged", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)

phone = root.children.create(content: "phone")
question_1 = phone.children.create(content: "Is the phone turning on?")

question_2 = question_1.children.create(content:"Are buttons stuck?", answer: true)
question_4 = question_2.children.create(content:"Did you try cleaning the frame of the button with hydroalcoholic solution", answer: true)
question_5 = question_2.children.create(content:"Is screen frozen?", answer: false)

question_3 = question_1.children.create(content: "Is the battery full?", answer: false)
question_6 = question_3.children.create(content:"Is the screen lightening?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in to fill the battery?", answer: false)

oven = root.children.create(content: "oven")
question_1 = oven.children.create(content: "Is the oven turning on?")


question_2 = question_1.children.create(content:"Is there a smell of burning coming when you light on the oven?", answer: true)
question_4 = question_2.children.create(content:"Did you try cleaning the oven, as maybe some remaining food is causing this?", answer: true)
question_5 = question_2.children.create(content:"Is it heating up at the wrong temperature?", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Have you changed the inside bulb?", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)

tablet = root.children.create(content: "tablet")
question_1 = tablet.children.create(content: "Is the tablet turning on?")

question_2 = question_1.children.create(content:"Are buttons stuck?", answer: true)
question_4 = question_2.children.create(content:"Did you try cleaning the frame of the button with hydroalcoholic solution?", answer: true)
question_5 = question_2.children.create(content:"Is screen frozen?", answer: false)

question_3 = question_1.children.create(content: "Is the battery full?", answer: false)
question_6 = question_3.children.create(content:"Is the screen lightening?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in to fill the battery?", answer: false)

projector = root.children.create(content: "projector")
question_1 = projector.children.create(content: "Is the projector turning on?")

question_2 = question_1.children.create(content:"Is the image wiggling?", answer: true)
question_4 = question_2.children.create(content:"Did you try to see if the projector is correctly connected to the computer?", answer: true)
question_5 = question_2.children.create(content:"Is the image too dark?", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Have you changed the projector bulb?", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)

television = root.children.create(content: "television")
question_1 = television.children.create(content: "Is the television turning on?")


question_2 = question_1.children.create(content:"Is there power but no signal?", answer: true)
question_4 = question_2.children.create(content:"Did you try checking on the outdoor antenna?", answer: true)
question_5 = question_2.children.create(content:"Is there interferences?", answer: false)

question_3 = question_1.children.create(content:"Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Have you changed some fuses inside?", answer: true)
question_7 = question_3.children.create(content:"Have you plugged it in?", answer: false)

laptop = root.children.create(content: "laptop")
question_1 = laptop.children.create(content: "Is the laptop turning on?")

question_2 = question_1.children.create(content:"Is there a key stuck?", answer: true)
question_4 = question_2.children.create(content:"Did you try cleaning the frame of the key with hydroalcoholic solution?", answer: true)
question_5 = question_2.children.create(content:"Is screen frozen?", answer: false)

question_3 = question_1.children.create(content: "Is the battery full?", answer: false)
question_6 = question_3.children.create(content:"Is the screen lightening?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in to fill the battery?", answer: false)

socket = root.children.create(content: "socket")
question_1 = socket.children.create(content: "Is the socket giving power?")

question_2 = question_1.children.create(content:"Are receptacles crooked?", answer: true)
question_4 = question_2.children.create(content:"Did you try opening the box to straighten holes?", answer: true)
question_5 = question_2.children.create(content:"Is there any wire troubles?", answer: false)

question_3 = question_1.children.create(content: "Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Is the main wire damaged?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in?", answer: false)

fan = root.children.create(content: "fan")
question_1 = fan.children.create(content: "Is the fan turning on?")

question_2 = question_1.children.create(content:"Are wings running too slow?", answer: true)
question_4 = question_2.children.create(content:"Did you try to open the fan to see if nothing was keeping blades from moving?", answer: true)
question_5 = question_2.children.create(content:"Is one of the blades broken?", answer: false)

question_3 = question_1.children.create(content: "Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Is the main wire damaged?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in?", answer: false)

air_conditioner = root.children.create(content: "air conditioner")
question_1 = air_conditioner.children.create(content: "Is the air conditioner turning on?")

question_2 = question_1.children.create(content:"Is it heating instead of cooling?", answer: true)
question_4 = question_2.children.create(content:"Was thermostat set to COOL or fan set to ON?", answer: true)
question_5 = question_2.children.create(content:"Is the breaker for the outside unit tripped?", answer: false)

question_3 = question_1.children.create(content: "Is it plugged in?", answer: false)
question_6 = question_3.children.create(content:"Is it set to ON button?", answer: true)
question_7 = question_3.children.create(content:"Did you try to plug it in?", answer: false)






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


#Adding engineers

Engineer.create(name: "Carlos Mendes", address: "Rua de Santa Marta 56, 1150-281 Lisbon")
Engineer.create(name: "Shannon Graybill", address: "Rua Bacelar e Silva 1, 1000-028 Lisbon")
Engineer.create(name: "Rui Freita", address: "Rua Gonçalves Crespo 2, 1150-176 Lisbon")
Engineer.create(name: "Andre Bras", address: "Rua de São Paulo 182, 1200-109 Lisbon")
Engineer.create(name: "Gabriel Dehan", address: "Rua da Sociedade Farmacêutica 3, 1150-341 Lisbon")
Engineer.create(name: "Nick Major", address: "Av. da Liberdade 23, 1250-096 Lisbon")
Engineer.create(name: "Rolando Lero", address: "Largo do Leão 3, 1000-046 Lisbon")
Engineer.create(name: "Silvana Pires", address: "Beco da Moeda 7, 1200-109 Lisbon")
Engineer.create(name: "Filipe Paiva", address: "Rua das janelas verdes 130, 1200-870 Lisbon")
Engineer.create(name: "Elisangela Leitão", address: "Rua Braamcamp 28, 1250-096 Lisbon")


