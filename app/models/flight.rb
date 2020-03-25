class Flight < ActiveRecord::Base
    belongs_to :plane 
    has_many :passengers  
end