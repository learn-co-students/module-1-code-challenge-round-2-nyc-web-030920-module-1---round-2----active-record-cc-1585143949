class Passenger < ActiveRecord::Base
    has_many :flights, through: :tickets

    def flights 
        self.ticket.map do |f| 
            f.flight 
        end
    end

    def planes 
        self.tickets.map do |p| 
            p.plane 
        end
    end

    def total_flight_time
        duration_in_min = self.tickets.flight.map do |a| 
            a.duration_in_minutes 
        end
        duration_in_min.inject(0){|sum,x| sum + x }
    end

    

end
# Passenger#name`
#     - returns the passenger's `name`
    
#   `Passenger#flights`
#     - returns an array of all of the passenger's `flights`
    
#   `Passenger#planes`
#     - returns an array of all of the passenger's `planes`
    
#   `Passenger#total_flight_time`
#     - returns the passenger's total `duration_in_minutes` from all of the passenger's flights