class Plane < ActiveRecord::Base
    has_many :flights
    has_many :passengers, through: :flights

    def name 
        self.name
    end 

    def num_of_seats
        self.num_of_seats
    end

    def flights 
        self.flights
    end

    def passengers 
        self.flight.tickets.map do |p| 
            p.passengers 
        end
    end

    def total_passengers 
        passengers.count
    end

end

# `Plane#name`
#     - returns the planes's `name`
    
#   `Plane#num_of_seats`
#     - returns the plane's `num_of_seats`
    
#   `Plane#flights`
#     - returns an array of all of the plane's flights
    
#   `Plane#passengers`
#     - returns an array of all of the plane's passengers
    
#   `Plane#total_passengers`
#     - returns the total number of passengers associated with this plane