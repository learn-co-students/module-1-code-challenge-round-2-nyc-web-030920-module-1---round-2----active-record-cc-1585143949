class Passenger < ActiveRecord::Base
    has_many :planes  
    has_many :flights, through: :planes 
end