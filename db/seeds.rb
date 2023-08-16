require "faker"

5.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: Restaurant::VALID_CATEGORY.sample
  )
  restaurant.save!
end
