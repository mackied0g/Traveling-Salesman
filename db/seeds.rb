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


