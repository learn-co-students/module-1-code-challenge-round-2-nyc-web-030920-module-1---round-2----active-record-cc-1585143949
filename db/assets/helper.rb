


def seed
  
  # PLANES = %w(Boeing Airbus Jet Learjet 23 Eclipse 500).map{|i| i.to_s}


  # plane_maker = -> name {Plane.create(name: name, num_of_seats: rand(100))}

  # flight_maker = -> place {Flight.create(duration: rand(10), origin: Faker::Address.state, destination: Faker::Address.state, plane: Plane.all.sample )}


  
  # 10.times do
  #   flight_maker.call('yeet')
  #   Ticket.create(flight: Flight.all.sample, passenger: Passenger.all.sample)
  # end
  Passenger.destroy_all
  Plane.destroy_all
  Flight.destroy_all
  p1 = Passenger.create!(name: "Tashawn")
  p2 = Passenger.create!(name: "Ali")
  p3 = Passenger.create!(name: "Ian")

pl1 = Plane.create!(name: "Boeing 757", num_of_seats: 100)
pl2 = Plane.create!(name: "Airbus", num_of_seats: 45)
pl3 = Plane.create!(name: "Jet", num_of_seats: 25)
pl4 = Plane.create!(name: "Learjet 23", num_of_seats: 20)
pl5 = Plane.create!(name: "Eclipse 500", num_of_seats: 73)

f1 = Flight.create!(duration: 1, origin: "Hartford", destination: "Montreal", plane: pl1 )
f2 = Flight.create!(duration: 3, origin: "New York", destination: "Chicago", plane: pl2)
f3 = Flight.create!(duration: 2, origin: "Rome", destination: "Florence", plane: pl3)
f4 = Flight.create!(duration: 6, origin: "Los Angeles", destination: "New York", plane:pl4 )
f5 = Flight.create!(duration: 8, origin: "New York", destination: "Los Angeles", plane: pl5)

end
