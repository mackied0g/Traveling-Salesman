# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# ==================== SALESMEN ======================= #

sal = Salesman.create(name:"Sal" , company:"Apple" )
jane = Salesman.create(name: "jane" , company: "Flatiron" )
mary = Salesman.create(name: "Mary", company: "Google")
paul = Salesman.create(name: "Paul" , company: "Whole Foods" )
beth = Salesman.create(name: " Beth", company: "Esty" )



# ==================== DESTINATIONS ==================== #
hawaii = Destination.create(location:"Hawaii", about_info:"Beautiful 5 islands")
ireland = Destination.create(location:"Ireland"  , about_info: "Most ireland place in Europe")
japan = Destination.create(location: "Japan" , about_info: "Ari gato")
england = Destination.create(location:"England" , about_info: "Cheerio")
s_africa = Destination.create(location: "South Africa" , about_info: "The world's most beautiful beaches!")



# ===================== HOTELS ========================= #


marriot = Hotel.create(destination_id:1 star_rating: , guest_rating: ,is_available?: true)
Hilton = Hotel.create(destination_id:2 star_rating: , guest_rating: ,is_available?: true)
motel_6 = Hotel.create(destination_id:3 star_rating: , guest_rating: ,is_available?: true)
summerville = Hotel.create(destination_id:4 star_rating: , guest_rating: ,is_available?: true)
regency = Hotel.create(destination_id:4 star_rating: , guest_rating: ,is_available?: true)

# ===================== FLIGHTS ======================== #




# ====================== ITINERARIES =================== #