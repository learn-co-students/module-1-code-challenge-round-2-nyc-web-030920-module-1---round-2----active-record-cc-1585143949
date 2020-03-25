class Passenger < ActiveRecord::Base
    belongs_to :flight
    has_many :flights
    belongs_to :passenger 
    has_many :planes, through: :flights 

    def name 
        self.name 
    end

    def flights 
        self.flights 
    end

    def planes
        self.planes 
    end 

    def total_flight_time
        flights.map {|flight| flight.duration_in_minutes}.reduce(:+)
    end
end