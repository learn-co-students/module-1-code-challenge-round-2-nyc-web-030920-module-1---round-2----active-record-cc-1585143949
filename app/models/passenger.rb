class Passenger < ActiveRecord::Base
    has_many :flights
    has_many :planes, through: :flights
    
    def flights
        self.flights.select{|f| flight == self.flight_id}
    end

    def planes
        self.planes.map{|p| planes.name}
    end

    def total_flight_time
        self.flights.duration.sum
    end
end