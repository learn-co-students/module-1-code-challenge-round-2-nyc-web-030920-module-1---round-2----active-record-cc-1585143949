class Plane < ActiveRecord::Base
    has_many :flights 
    belongs_to :passenger
end