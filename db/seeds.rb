require './models/user'
require './models/product'
require 'faker'

# (0..10).each do |i|
#     User.create(name: "User #{i}", email: "something", address: "something", password: "password")
# end

(0..10).each do |i|
  User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: Faker::Name.name,
  cc_number: Faker::PhoneNumber.phone_number
  )
end

(0..10).each do |i|
  Product.create(
  name: Faker::Commerce.product_name,
  category_id: Faker::Number.number(6),
  brand_id: Faker::Number.number(4),
  price: Faker::Commerce.price
  )
end
