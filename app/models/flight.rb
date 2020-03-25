class Flight < ActiveRecord::Base
    belongs_to :plane
    has_many :passengers

def self.duration_in_minutes
self.duration
end

def self.origin
self.origin
end

def self.destination
    self.destination
end

def passengers
Passenger.all.map do |passenger|
    passenger.where(:flight_id == self)
end
end


def self.plane
self.plane_id
end

def total_passengers
#keeps track of passengers on flight
self.passenger_id.count
end


end