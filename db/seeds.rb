# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


my_user = User.create!(name: "Sergio",
             password: "admin45",
             password_confirmation: "admin45",
             email: "sergimartnez@yahoo.es")

15.times do |n|
  name = Faker::Company.name
  start_hour = Faker::Number.between(0, 23)
  start_minute = Faker::Number.between(0, 59)
  end_hour = Faker::Number.between(start_hour + 1, 23)
  end_minute = Faker::Number.between(0, 59)
  user = my_user
  opening_time="#{start_hour}:#{start_minute}"
  closing_time="#{end_hour}:#{end_minute}"

  Location.create!(name: name,
              opening_time: opening_time,
              closing_time: closing_time,
              user: user)
end
