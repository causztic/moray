# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = []
30.times.each do |time|
  items << { name: Faker::Name.name, 
            address: Faker::Address.street_address, 
            phone_number:Faker::PhoneNumber.phone_number,
            email: Faker::Internet.email,
            license: Faker::Lorem.word,
            country: Faker::Address.country,
            vessel_name: Faker::Lorem.word,
            vessel_gear_type: Faker::Lorem.word,
            coordinates: [{lat: Faker::Address.latitude, lng: Faker::Address.longitude}],
            start_date: Time.now + time.days,
            end_date: Time.now + time.days + 10.hours }
end

Operation.create(items)