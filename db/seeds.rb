# Do Not Change This File
require_relative "./assets/helper"
seed

Flight.destroy_all
Passenger.destroy_all 
Plane.destroy_all
f1 = Flight.new(duration_in_minutes: 400, origin: "FJK", destination: "Colombia", plane_id: 46)
f2 = Flight.new(duration_in_minutes: 600, origin: "Newark", destination: "Hawaii", plane_id: 2)
p1 = Passenger.new("Eleanor")
p2 = Passenger.new("James")
p3 = Passenger.new("Melanie")
p4 = Passenger.new("Samuel")

