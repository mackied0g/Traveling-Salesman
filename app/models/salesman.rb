class Salesman < ApplicationRecord
    has_secure_password
    has_many :itineraries
    has_many :destinations, through: :itineraries
    has_many :hotels, through: :itineraries
    has_many :flights, through: :itineraries
  
    validates :email, presence: true
    validates :email, format: /@/
    validates :password, presence: true
    validates :password, length: { minimum: 8 }
end
