# Do Not Change This File
require_relative "./assets/helper"
seed

Plane.destroy_all
Flight.destroy_all
Passenger.destroy_all

p1 = Plane.create(name: "m9", num_of_seats:90)

p2 = Plane.create(name: "mk67", num_of_seats:150)

p3 = Plane.create(name: "ut789", num_of_seats:20)

f1 = Flight.create(duration: 90, origin: "NY", destination: "LA", plane_id: 1)

f2 = Flight.create(duration: 90, origin: "DC", destination: "LA", plane_id: 2)

f3 = Flight.create(duration: 90, origin: "NY", destination: "DC", plane_id: 3)

pa1 = Passenger.create(name: "James")

pa2 = Passenger.create(name: "Jamie")

pa3 = Passenger.create(name: "Ashley")