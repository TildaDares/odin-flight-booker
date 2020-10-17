# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all

  codes = %w[UCLA NYC ABJ LAX JFK MIA DC CAL ATL]
  codes.each do |abbr|
    Airport.create(code: "#{abbr}")
  end

  airports = Airport.all.to_a.permutation(2).to_a
  airports.sample(5).each do |id|
    departure = Faker::Time.between(from: DateTime.now, to: 7.days.from_now, format: :short) #=> "2018/10/15 10:48"
    arrival = Faker::Time.between(from: departure, to: DateTime.parse(departure) + 17.hours, format: :short)
    Flight.create(from_airport: id[0], to_airport: id[1], arrival_time: arrival, departure_time: departure)
  end
