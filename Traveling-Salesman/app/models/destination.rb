class Destination < ApplicationRecord
has_many :itineries
has_many :salemen, through: :itineries
has_many :flights
has_many :hotels

end
