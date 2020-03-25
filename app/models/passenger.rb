class Passenger < ActiveRecord::Base
    belongs_to :plane  
    has_many :flights, through: :planes 
end