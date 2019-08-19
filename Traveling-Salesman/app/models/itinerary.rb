class Itinerary < ApplicationRecord
    belongs_to :saleman
    belongs_to :flight
    belongs_to :hotel
    belongs_to :destination

end
