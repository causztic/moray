# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = []
catches = []
specimen = []
maxWeight = 20
minWeight = 0.5
randCount = rand(100)

50.times.each do |time|
  specimen << Specimen.new({ age: rand(5), 
                             length: rand*rand(50), 
                             weight: rand*rand(20), 
                             sex: [:m, :f].sample })
end

3.times.each do |time|
  catches << Catch.new({ common_name: [:salmon, :tuna, :mackerel, :halibut, :swordfish].sample,
               scientific_name: Faker::Lorem.word,
               weight: (rand * (maxWeight-minWeight) + minWeight)*randCount,
               count: randCount, 
               environment: Environment.new({water_temperature: rand * 10, 
                                             sea_depth: rand * 1000}),
               specimen: specimen
               })
end

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
            end_date: Time.now + time.days + 10.hours,
            catches: catches,
            }
end

Operation.create(items)