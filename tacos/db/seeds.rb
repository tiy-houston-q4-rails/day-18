# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Taco.create(name: "Carnitas", ingredients: "carnitas, tortilla, cilantro, onion, jalepeño, NO LETTUCE.", photo_url: "http://www.gastronomydomine.com/uploaded_images/P1030668-783508.JPG", delicious: true, price: 5)
Taco.create(name: "Quesadilla", ingredients: "cheese, tortilla", photo_url: "http://upload.wikimedia.org/wikipedia/commons/5/5c/Quesadilla.jpg", delicious: true, price: 3)
Taco.create(name: "Hard Shell with lettuce", ingredients: "hard shell, taco meat, lettuce", photo_url: "http://media-cache-ec0.pinimg.com/736x/c2/62/f8/c262f807ce8905162ef0cc886a4019c4.jpg", delicious: false, price: 1)

40.times do
  Taco.create name: [Faker::Hacker.ingverb, Faker::Hacker.noun].join(" "),
              ingredients: 4.times.map{ Faker::Hacker.noun }.join(", "),
              photo_url: Faker::Company.logo,
              delicious: [true,false].sample,
              price: (3..12).to_a.sample
end
