class Destination < ApplicationRecord
has_many :itineries
has_many :salesmen, through: :itineries
has_many :flights
has_many :hotels

end
