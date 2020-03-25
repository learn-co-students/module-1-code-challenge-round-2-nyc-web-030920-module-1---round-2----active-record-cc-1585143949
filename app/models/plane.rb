class Plane < ActiveRecord::Base
    has_many :flights
    has_many :passengers, through: :flights

    def flights
        self.flights.map
    end

    def passengers
        self.passengers.map{|p| p.name}
    end

    def total_passengers
        passengers.count
    end
end