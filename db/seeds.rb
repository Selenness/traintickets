# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(
    name: 'Inna',
    email: '833117@mail.ru',
    password: '12345678',
    password_confirmation: '12345678',
    admin: true
)
st1 = RailwayStation.create(name: 'Chelyabinsk')
st2 = RailwayStation.create(name: 'Moskva')

# route1 = Route.create(name: 'Chelyabinsk-Moskva')

# train = Train.create()

# coupe_car = Car.create(number: 123, route_id: )
