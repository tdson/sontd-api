10.times do |n|
  manufacturer = Manufacturer.create! name: Faker::Company.name
  rand(2..10).times do
    manufacturer.products.create! name: Faker::Superhero.name, price: rand(100..500),
      image: Faker::Avatar.image, description: Faker::Lorem.paragraph
  end
end
