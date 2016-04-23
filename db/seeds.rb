# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
items = []

maxWeight = 20
minWeight = 0.5
randCount = rand(100)


30.times.each do |time|

  type = [:scientific, :commercial].sample

  catches = []
  names = [:salmon, :tuna, :mackerel, :halibut, :swordfish]

  rand(3..5).times.each do |time|
    specimen = []

    current_name = names.sample
    names.delete(current_name)

    rand(40..50).times.each do |time|
      specimen << Specimen.new({ age: rand(5), 
                                 length: rand*rand(50), 
                                 weight: rand*rand(20), 
                                 sex: [:m, :f].sample,
                                 maturity: [:resting_phase, :early_maturing_phase, 
                                            :advanced_maturing_phase, :prespawning_phase, 
                                            :spawning_phase, :spent_phase].sample })
    end

    catches << Catch.new({ 
                 species_common_name: current_name,
                 species_scientific_name: (type == :scientific ? Faker::Lorem.word : nil),
                 weight: (rand * (maxWeight-minWeight) + minWeight)*randCount,
                 count: randCount, 
                 start_datetime: Time.now + time.minutes,
                 end_datetime:   Time.now + (time + randCount).minutes,
                 environment: (type == :scientific ? Environment.new({water_temperature: rand * 10, 
                                               depth: rand * 1000}) : nil),
                 specimen: (type == :scientific ? specimen : []),
                 market_fish_ticket_type: (type == :commercial ? Faker::Lorem.word : nil),
                 market_fish_ticket_number: (type == :commercial ? rand(100000000..999999999) : nil)
                 })
  end

  items << { user_name: Faker::Name.name,
            nature: type,
            user_address: Faker::Address.street_address, 
            user_phone_number:Faker::PhoneNumber.phone_number,
            user_email: Faker::Internet.email,
            user_license: Faker::Lorem.word,
            user_country_of_origin: Faker::Address.country,
            vessel_name: Faker::Lorem.word,
            vessel_gear_type: Faker::Lorem.word,
            coordinates: [{lat: Faker::Address.latitude, lng: Faker::Address.longitude}],
            start_datetime: Time.now + time.days,
            end_datetime: Time.now + time.days + 10.hours,
            catches: catches,
            }
end

Operation.create(items)