# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ramsey = Owner.create(name: 'Ramsey', email: 'ramsey@mail.com')
reson = Owner.create(name: 'Reson', email: 'reson@mail.com')
gideon = Owner.create(name: 'Gideon', email: 'gideon@mail.com')
cecilia = Owner.create(name: 'Cecilia', email: 'cecilia@mail.com')
brian = Owner.create(name: 'Brian', email: 'brian@mail.com')

monitor = Equipment.create(serial: 'ABC1', name: 'HP Monitor', description: 'Monitor', operating_system: 'Windows', date_of_assignment: Date.new(2022, 10, 27), owner_id: ramsey.id)
keyboard = Equipment.create(serial: 'ABC2', name: 'HP Keyboard', description: 'Keyboard', operating_system: 'Windows', date_of_assignment: Date.new(2022, 10, 27), owner_id: ramsey.id)
mouse = Equipment.create(serial: 'ABC3', name: 'HP Mouse', description: 'Mouse', operating_system: 'Windows', date_of_assignment: Date.new(2022, 10, 27), owner_id: ramsey.id)
cpu = Equipment.create(serial: 'ABC4', name: 'HP CPU', description: 'CPU', operating_system: 'Windows', date_of_assignment: Date.new(2022, 10, 27), owner_id: ramsey.id)

cellphone = Equipment.create(serial: 'ABC5', name: 'iPhone', description: 'Smartphone', operating_system: 'MacOS')
laptop = Equipment.create(serial: 'ABC6', name: 'iMac', description: 'Laptop', operating_system: 'MacOS')
tablet = Equipment.create(serial: 'ABC7', name: 'iPad', description: 'Tablet', operating_system: 'MacOS')
printer = Equipment.create(serial: 'ABC8', name: 'HP Printer', description: 'Printer', operating_system: 'HP')
