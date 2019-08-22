# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ron = Salesman.create(name: "Ron Howard", company: "P&G", email: "helloron@ronhoward.com", password: "1d&3G:7lR%?")
kathy = Salesman.create(name: "Kathy Griffin", company: "AIG", email: "kathy@kathy.com", password: "123456")
george = Salesman.create(name: "George Michael Bluth", company: "The Bluth Company", email: "mgb@bluth.com", password: "123456")
linday = Salesman.create(name: "Linday Bluth", company: "N/A", email: "lindsay@bluth.com", password: "123456")

aruba = Destination.create(location: "Aruba", about_info: "This is Aruba. Bring sunscreen!")
equador = Destination.create(location: "equador", about_info: "This is Equador. Bring sunscreen!")
moon = Destination.create(location: "The Moon", about_info: "Not as hot but definitely bring sunscreen. Also maybe a spacesuit")
nyc = Destination.create(location: "Manhattan", about_info: "Ay, I'm walkin' here!!! Make sure you got plenty of dough.")

# tc_or_local, year, month = 1, day = 1, hour = 0, min = 0, sec = 0)

delta123 = Flight.create(destination_id: moon.id, flight_date: (05/14/1998), price: 420.42, level: "business", flight_number: "Delta123")
sw123 = Flight.create(destination_id: aruba.id, flight_date: (03/12/2008), price: 890.42, level: "first", flight_number: "SouthWest123")
can123 = Flight.create(destination_id: equador.id, flight_date: (2010-05-11), price: 40.42, level: "business", flight_number: "CanadaAir123")
united123 = Flight.create(destination_id: nyc.id, flight_date: (1990-05-11), price: 310.42, level: "first", flight_number: "United123")


hiltonparis = Hotel.create(destination_id: aruba.id, star_rating: 4, guest_rating: 9, is_available?: true, name: "The Hilton Paris")
ramadaflushing = Hotel.create(destination_id: aruba.id, star_rating: 2, guest_rating: 5, is_available?: false, name: "The Ramada Flushing")
daysinn = Hotel.create(destination_id: aruba.id, star_rating: 1, guest_rating: 3, is_available?: true, name: "Days Inn")
mariottmarquis = Hotel.create(destination_id: equador.id, star_rating: 4, guest_rating: 10, is_available?: true, name: "The Mariott Marquis Times Square")

