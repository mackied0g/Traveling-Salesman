class Salesman < ApplicationRecord
    has_many :itineraries
    has_many :destinations, through: :itineraries
    has_many :hotels, through: :itineraries
    has_many :flights, through: :itineraries

end
