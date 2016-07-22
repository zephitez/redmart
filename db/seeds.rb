require './models/user'
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
