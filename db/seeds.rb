require 'faker'


15.times do |index| # Crée 30 rdv random avec Faker
  city = City.create(city_name: Faker::Address.city)
end

30.times do |index| # Crée 20 patients random avec Faker
  puppy = Puppy.create(name: Faker::Name.first_name, owner: "Owner n° #{index}", city_id: rand(1..15))
end

10.times do |index| # Crée 5 docteurs random avec Faker
  dog_sitter = DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..15))
end

70.times do |index| # Crée 30 rdv random avec Faker
  stroll = Stroll.create(date: Faker::Date.between(2.days.ago, Date.today), puppy_id: rand(1..30), dog_sitter_id: rand(1..10))
end
