# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "--------------"
puts "Adding users.."
user = User.create([
  {
    first_name: "Emma",
    surname: "Bindi",
    email: "e@gmail.com",
    password: "111111", 
    bio: "Gen Y living in South Yarra, love spending time in my garden growing herbs"
  },
  {
  first_name: "Laura",
  surname: "Bindi",
  email: "l@gmail.com",
  password: "111111", 
  }
])
puts "Added #{user.count} users"

puts "Adding categories, subcategories and units of measurement.."
require_relative "production_seeds"
puts "Added categories, subcategories and units of measurement 👏🏽"

puts "Adding Produce Listings.."

listing = Listing.create([
  {
    title: "Cauliflower",
    price: 2.00,
    qty: 1,
    description: "Monster purple cauliflower, organically grown",
    category_id: 1,
    subcategory_id: 12,
    uom_id: 1,
    user_id: 1,
  }
])

Listing.all.each do | listing |
  listing.photo.attach(
    io: File.open("app/assets/images/cauliflower.jpg"),
    filename: "cauliflower.jpg",
    content_type: "image/jpg"
  )
end

puts "Added #{listing.count} listings"
puts "--------------"
