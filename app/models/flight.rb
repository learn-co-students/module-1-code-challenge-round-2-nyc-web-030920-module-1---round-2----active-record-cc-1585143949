class Flight < ActiveRecord::Base
    belongs_to :plane
    has_many :passengers

    def passengers
        self.passengers.map{|p| p.name}
    end

    def plane
        self.plane
    end

    def total_passengers
        self.passengers.count
    end
end