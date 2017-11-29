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
question_1 = lamp.children.create(content: "Does the lamp turn on? HINT!#Check if the appliance is plugged in!")
# 15.times do |i|
#   i += 1
#   node = Question.find_by(content: "#{i}")
#   node.children.create(content:"#{i*2}", answer: true)
#   node.children.create(content:"#{i*2 + 1}", answer: false)
# end

question_2 = question_1.children.create(content:"Is it flickering?", answer: true)
question_4 = question_2.children.create(content:"Turn the lamp off.Take the lamp plug out of the socket. Open the plug carefully. Check the fuse of the plug. If the fuse is black or has damage change the fuse. Put the plug back into the socket. Is it still flickering? ", answer: true)
question_5 = question_2.children.create(content:"Turn the lamp off. Take the lamp plug out of the socket.Try switching the bulb for a new one.Plug the lamp back into the socket. Does it work?", answer: false)

question_3 = question_1.children.create(content:"Take the lamp plug out of the socket. Open the plug carefully. Check the fuse of the plug. If the fuse is black or has damage change the fuse. Put the plug back into the socket. Does it work?", answer: false)
question_6 = question_3.children.create(content:"Take the lamp plug out of the socket.Try switching the bulb for a new one.Plug the lamp back into the socket. Does it work?", answer: true)
question_7 = question_3.children.create(content:"Is there any damage to the wires of the lamp. ", answer: false)


kettle = root.children.create(content: "kettle")
question_1 = kettle.children.create(content: "Is the kettle turning on?")

question_2 = question_1.children.create(content:"Is the kettle heating water?", answer: true)
question_4 = question_2.children.create(content:"Is the kettle leaking?", answer: true)
question_5 = question_2.children.create(content:"Did you try descale your kettle using white-vinegar", answer: false)

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

Engineer.create(name: "Christian Gabriel", address: "23 rue Lakanal, 75015 Paris")
Engineer.create(name: "Maria Rita Aguiar", address: "Rua de Santa Marta 56, 1150-281 Lisbon")
Engineer.create(name: "Geert Van Hoolsen", address: "Kinkerstraat 35, 1053 DD Amsterdam")
Engineer.create(name: "Gillian Redmore", address: "108 Berryfield Road, London SE17")
Engineer.create(name: "Greg Petechin", address: "258 Flatbush Ave, Brooklyn, NY 11217")
Engineer.create(name: "Elizabeth Hill", address: "28 Kipling Ave, Etobicoke, ON M8V 4B6")
Engineer.create(name: "Marta Gutierrez", address: "Calle Ancora, 72, 28045 Madrid")
Engineer.create(name: "Kukka Peltolta", address: "Alppikatu 82, 00101 Helsinki")
Engineer.create(name: "Orlando da Silva", address: "R. Sorocaba, 43 - Botafogo, Rio de Janeiro - RJ")
Engineer.create(name: "Khoshlen Gurvinder", address: "330, 33rd Road, Pali Village, Khar West, Mumbai, Maharashtra 400050")


