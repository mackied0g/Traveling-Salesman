# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Salesman.destroy_all
Flight.destroy_all
Hotel.destroy_all
Destination.destroy_all
Itinerary.destroy_all

ron = Salesman.create(name: "Ron Howard", company: "P&G", email: "helloron@ronhoward.com", password: "1d&3G:7lR%?")
kathy = Salesman.create(name: "Kathy Griffin", company: "AIG", email: "kathy@kathy.com", password: "123456")
george = Salesman.create(name: "George Michael Bluth", company: "The Bluth Company", email: "gmb@bluth.com", password: "123456")
linday = Salesman.create(name: "Linday Bluth", company: "N/A", email: "lindsay@bluth.com", password: "56")

tokyo = Destination.create(location: "Tokyo", about_info: "こんにちわ ! Welcome to Tokyo. Be sure to visit the Reiyukai Shakaden Temple!")
ecuador = Destination.create(location: "Ecuador", about_info: "This is Ecuador. Bring sunscreen!")
moon = Destination.create(location: "The Moon", about_info: "Not as hot as ecuador, but definitely bring sunscreen. Also maybe a spacesuit")
nyc = Destination.create(location: "Manhattan", about_info: "Ay, I'm walkin' here!!! Make sure you got plenty of dough, this place can be a little pricey.")

# tc_or_local, year, month = 1, day = 1, hour = 0, min = 0, sec = 0)

delta123 = Flight.create(destination_id: moon.id, flight_date: ("05/14/1998 16:40:00"), price: 420.42, level: "business", flight_number: "Delta123")
sw123 = Flight.create(destination_id: tokyo.id, flight_date: ("05/14/1998 16:40:00"), price: 890.42, level: "first", flight_number: "SouthWest123")
can123 = Flight.create(destination_id: ecuador.id, flight_date: ("05/14/1998 16:40:00"), price: 40.42, level: "business", flight_number: "CanadaAir123")
united123 = Flight.create(destination_id: nyc.id, flight_date: ("05/14/1998 16:40:00"), price: 310.42, level: "first", flight_number: "United123")

####hotel

sadachiyo = Hotel.create(destination_id: tokyo.id, star_rating: 3, guest_rating: 9, is_available?: true, name: "Sukeroku No Yado Sadachiyo")
4seasonstokyo = Hotel.create(destination_id: tokyo.id, star_rating: 5, guest_rating: 10, is_available?: true, name: "Four Seasons Hotel Tokyo At Marunouchi")

mashpi = Hotel.create(destination_id: ecuador.id, star_rating: 5, guest_rating: 9, is_available?: false, name: "Mashpi Lodge")
selina = Hotel.create(destination_id: ecuador, star_rating: 2, guest_rating: 6, is_available?: false, name: "Selina Baños")

moonhotel = Hotel.create(destination_id: moon.id, star_rating: 2, guest_rating: 3, is_available?: true, name: "Blue Moon Hotel")
aurora = Hotel.create(destination_id: moon.id, star_rating: 5, guest_rating: 10, is_available?: true, name: "Aurora Station")



test = Itinerary.create(destination_id: 1, salesman_id: 1, flight_id: 1, hotel_id: 1, starttraveldate: "2019-08-22 23:46")