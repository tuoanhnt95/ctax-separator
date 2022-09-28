puts 'Destroying old flats'
Flat.destroy_all

puts 'Load new flats'
4.times do
  Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.street_address,
    description: Faker::Books::Lovecraft.paragraphs,
    price_per_night: rand(30..200),
    number_of_guests: rand(1..10)
  )
end

puts "Created #{Flat.count} flats"
