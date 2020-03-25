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
        self.passengers 
    end 

    def total_passengers
        passengers.length()
    end
end