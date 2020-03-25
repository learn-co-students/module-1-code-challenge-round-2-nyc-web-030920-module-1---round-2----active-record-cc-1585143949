class Passenger < ActiveRecord::Base
    has_many :flights


def self.name
self.name
end

def self.flights
#returns an array of all of the passenger's `flights`
arr = []
arr << self.flight_id
end

def self.planes
#returns an array of all of the passenger's `planes`
Flight.all.map do |flight|
arr = []
myflights = flight.passenger_id == self
arr << myflights.plane_id
arr
end
end

def total_flight_time
#- returns the passenger's total `duration_in_minutes` from all of 
#the passenger's flights
Flight.all.map do |flight|
    myflights = flight.where(:passenger_id == self)
    myflights.duration.sum
end

end