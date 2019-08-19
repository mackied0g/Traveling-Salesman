class Hotel < ApplicationRecord
    belongs_to :destination
    has_many :itineraries
    has_many :flights, through: :itineraries
    has_many :salesmen, through: :itineraries

end
