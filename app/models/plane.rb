class Plane < ActiveRecord::Base
    has_many :flights
    has_many :passengers, through: :flights

def self.name
self.name
end

def self.num_of_seats
self.num_of_seats
end

def self.flights
#returns an array of all of the plane's flights
Flight.all.map do |flight|
flight.where(:plane_id == self)
end
end

def self.passengers
#returns an array of all of the plane's passengers
Passenger.all.map do |pass|
    pass.plane_id == self
end

def total_passengers
flights = Flights.plane_id == self
flights.passenger_id.count
end




end