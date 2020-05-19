puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."
5.times do |i|
  restaurant = Restaurant.create!(
    name: Faker::Games::Zelda.unique.game,
    address: Faker::Address.unique.full_address,
    phone_number: Faker::PhoneNumber.unique.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "#{i + 1} - [#{restaurant.category}] #{restaurant.name} (#{restaurant.address})"
end

puts "Finished!"
