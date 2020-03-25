class Ticket < ActiveRecord::Base
    belongs_to :passengers 
    belongs_to :flights
end
