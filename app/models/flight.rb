class Flight < ApplicationRecord
    belongs_to :destination
    has_many :itineraries
    has_many :hotels, through: :itineraries
    has_many :salesmen, through: :itineraries

end
