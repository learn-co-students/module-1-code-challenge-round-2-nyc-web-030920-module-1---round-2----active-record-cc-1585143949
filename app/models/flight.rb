class Flight < ActiveRecord::Base
    belongs_to :plane
    has_many :passengers, through: :tickets

    def passengers
        self.ticket.map do |t|
            t.passenger 
        end
    end 

    def plane 
        self.plane
    end 
    
    def total_passengers 
        self.passengers.count
    end

end


# `Flight#duration_in_minutes`
# - returns the flight's `duration_in_minutes` as an integer

# `Flight#origin`
# - returns the flight's `origin` as a string

# `Flight#destination`
# - returns the flight's `destination` as a string

# `Flight#passengers`
# - returns an array of all of the flight's passengers

# `Flight#plane`
# - returns the plane that belongs to the flight

# `Flight#total_passengers`
# - returns the total number of passengers on the flight