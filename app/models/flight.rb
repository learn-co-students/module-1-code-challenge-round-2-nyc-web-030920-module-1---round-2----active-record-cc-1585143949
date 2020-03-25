class Flight < ActiveRecord::Base
    belongs_to :plane 
    belongs_to :passenger 
end