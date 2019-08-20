class Itinerary < ApplicationRecord
    belongs_to :salesman
    belongs_to :flight
    belongs_to :hotel
    belongs_to :destination

    validates :salesman, presence: true
    validates :destination, presence: true
    validates :flight, presence: true
    validates :hotel, presence: true
end
