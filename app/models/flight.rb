class Flight < ActiveRecord::Base
    belongs_to :plane
    belongs_to :passenger
    has_many :passengers


    def duration_in_minutes 
        self.duration_in_minutes.to_i 
    end

    def origin
        self.origin
    end


    def destination
        self.destination
    end

    def passengers
        self.passengers 
    end

    def plane 
        self.plane 
    end

    def total_passengers
        passengers.length 
    end
end