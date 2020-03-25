class Flight < ActiveRecord::Base
    belongs_to :plane 
    has_many :passengers  
    
    def duration_in_minutes 
        self.duration_in_minutes 
    end 

    def origin 
        self.origin 
    end 

    def plane 
        self.planes.map(&:name) 
    end 
    
end