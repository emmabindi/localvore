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
    bio: "Gen Y living in South Yarra, love spending time in my garden growing herbs",
  },
  {
    first_name: "Laura",
    surname: "Bindi",
    email: "l@gmail.com",
    password: "111111", 
    bio: "Some information goes here all about her",
  },
  {
    first_name: "Brenda",
    surname: "Bindi",
    email: "b@gmail.com",
    password: "111111", 
    bio: "Empty nester with lots of backyard space for growing veggies and herbs. Lover of travel and adventure.",
    },
  {
    first_name: "Josh",
    surname: "Bollen",
    email: "j@gmail.com",
    password: "111111", 
    bio: "Spend my free time catching waves or getting dirt under my fingernails. I work FIFO so need to share my garden bounty as I'm away intermittently.",
    },
])

puts "--------------"
puts "Adding addresses.."

location = Location.create([
  {
    street_address: "123 High St",
    suburb: "South Yarra",
    city: "Melbourne",
    state: "Victoria",
    country: "Australia",
    user_id: 1
  },
  {
    street_address: "279 Pretty St",
    suburb: "Toorak",
    city: "Melbourne",
    state: "Victoria",
    country: "Australia",
    user_id: 2, 
  },
  {
    street_address: "24 Bush Rd",
    suburb: "Malvern East",
    city: "Melbourne",
    state: "Victoria",
    country: "Australia",
    user_id: 3, 
  },
  {
    street_address: "2 Ethel St",
    suburb: "Albert Park",
    city: "Melbourne",
    state: "Victoria",
    country: "Australia",
    user_id: 4, 
  }
])

puts "--------------"

User.all.each do | user |
  user.profile_photo.attach(
    io: File.open("app/assets/images/sketchman.jpeg"),
    filename: "sketchman.jpeg",
    content_type: "image/jpeg"
  )
end

puts "Added #{user.count} users"

puts "--------------"

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
  },
  {
    title: "Artichoke",
    price: 1.50,
    qty: 1,
    description: "Yum",
    category_id: 1,
    subcategory_id: 1,
    uom_id: 4,
    user_id: 2,
  },
  {
    title: "Figs",
    price: 5,
    qty: 1,
    description: "Perfectly ripe",
    category_id: 2,
    subcategory_id: 55,
    uom_id: 5,
    user_id: 3,
  },
  {
    title: "Heirloom Tomatos",
    price: 5.00,
    qty: 1,
    description: "Stunning - rainbow coloured heirlooms, firm texture",
    category_id: 1,
    subcategory_id: 40,
    uom_id: 6,
    user_id: 1,
  },
  {
    title: "Sage",
    price: 1,
    qty: 1,
    description: "Aromatic and beautiful large leaves, organically grown",
    category_id: 3,
    subcategory_id: 102,
    uom_id: 2,
    user_id: 2,
  },
  {
    title: "Basil",
    price: 1,
    qty: 1,
    description: "Sweet basil ready to make your margherita pizza pop",
    category_id: 3,
    subcategory_id: 83,
    uom_id: 2,
    user_id: 3,
  },
])

puts "--------------"

Listing.all.each do | listing |
  listing.photo.attach(
    io: File.open("app/assets/images/cauliflower.jpg"),
    filename: "cauliflower.jpg",
    content_type: "image/jpg"
  )
end

puts "Added #{listing.count} listings"
puts "--------------"
