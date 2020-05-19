puts "--------------"
puts "Adding users.."
user1 = User.create(
    first_name: "Emma",
    surname: "Bindi",
    email: "e@gmail.com",
    password: "111111", 
    bio: "Gen Y living in South Yarra, love spending time in my garden growing herbs")

  user1.profile_photo.attach(
    io: File.open("app/assets/images/lady-hat.jpg"),
    filename: "lady-hat.jpg",
    content_type: "image/jpg")

user2 = User.create(
    first_name: "Laura",
    surname: "Bindi",
    email: "l@gmail.com",
    password: "111111", 
    bio: "Some information goes here all about her")

  user2.profile_photo.attach(
    io: File.open("app/assets/images/avatar-lady-hat.jpg"),
    filename: "avatar-lady-hat.jpg",
    content_type: "image/jpg")

user3 = User.create(
    first_name: "Brenda",
    surname: "Bindi",
    email: "b@gmail.com",
    password: "111111", 
    bio: "Empty nester with lots of backyard space for growing veggies and herbs. Lover of travel and adventure.")

  user3.profile_photo.attach(
    io: File.open("app/assets/images/lady-gardener-hat.png"),
    filename: "lady-garener-hat.png",
    content_type: "image/png")

user4 = User.create(
    first_name: "Josh",
    surname: "Bollen",
    email: "j@gmail.com",
    password: "111111", 
    bio: "Spend my free time catching waves or getting dirt under my fingernails. I work FIFO so need to share my garden bounty as I'm away intermittently.")

  user4.profile_photo.attach(
    io: File.open("app/assets/images/man-gardener.png"),
    filename: "man-gardener.png",
    content_type: "image/png")

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

puts "Added 4 users"

puts "--------------"

puts "Adding categories, subcategories and units of measurement.."
require_relative "production_seeds"
puts "Added categories, subcategories and units of measurement 👏🏽"

puts "Adding Produce Listings.."

listing1 = Listing.create(
    title: "Cauliflower",
    price: 2.00,
    qty: 1,
    description: "Monster purple cauliflower, organically grown",
    category_id: 1,
    subcategory_id: 12,
    uom_id: 1,
    user_id: 1)

    listing1.photo.attach(
      io: File.open("app/assets/images/cauliflower.jpg"),
      filename: "cauliflower.jpg",
      content_type: "image/jpg")
 
#  --- 

  listing2 = Listing.create(
    title: "Artichoke",
    price: 1.50,
    qty: 1,
    description: "Yum",
    category_id: 1,
    subcategory_id: 1,
    uom_id: 4,
    user_id: 2)

    listing2.photo.attach(
      io: File.open("app/assets/images/artichoke.jpg"),
      filename: "artichoke.jpg",
      content_type: "image/jpg")

  # ---

  listing3 = Listing.create(
    title: "Strawberries",
    price: 2,
    qty: 10,
    description: "Super sweet, variety of sizes",
    category_id: 2,
    subcategory_id: 48,
    uom_id: 4,
    user_id: 3)

  listing3.photo.attach(
    io: File.open("app/assets/images/strawberry-basket.jpg"),
    filename: "strawberry-basket.jpg",
    content_type: "image/jpg")

    # ---  

  listing4 = Listing.create(
    title: "Heirloom Tomatos",
    price: 5.00,
    qty: 1,
    description: "Stunning - rainbow coloured heirlooms, firm texture",
    category_id: 1,
    subcategory_id: 40,
    uom_id: 6,
    user_id: 1)

    listing4.photo.attach(
      io: File.open("app/assets/images/tomato-heirloom.jpg"),
      filename: "tomato-heirloom.jpg",
      content_type: "image/jpg")

  # ---

  listing5 = Listing.create(
    title: "Sage",
    price: 1,
    qty: 1,
    description: "Aromatic and beautiful large leaves, organically grown",
    category_id: 3,
    subcategory_id: 102,
    uom_id: 2,
    user_id: 4)

  listing5.photo.attach(
    io: File.open("app/assets/images/sage.jpg"),
    filename: "sage.jpg",
    content_type: "image/jpg")

  # ---

  listing6 = Listing.create(
    title: "Basil",
    price: 1,
    qty: 1,
    description: "Sweet basil ready to make your margherita pizza pop",
    category_id: 3,
    subcategory_id: 83,
    uom_id: 2,
    user_id: 3)

  listing6.photo.attach(
    io: File.open("app/assets/images/basil.jpg"),
    filename: "basil.jpg",
    content_type: "image/jpg")

    # ---   

  listing7 = Listing.create(
    title: "Baby Carrots",
    price: 3,
    qty: 5,
    description: "I will harvest whichever day you collect so SUPER FRESH",
    category_id: 1,
    subcategory_id: 11,
    uom_id: 5,
    user_id: 4)

  listing7.photo.attach(
    io: File.open("app/assets/images/carrots-baby.jpg"),
    filename: "carrots-baby.jpg",
    content_type: "image/jpg")

    # ---   

  listing8 = Listing.create(
    title: "Lemons",
    price: 1,
    qty: 1,
    description: "Small and juicy",
    category_id: 2,
    subcategory_id: 62,
    uom_id: 6,
    user_id: 2)

  listing8.photo.attach(
    io: File.open("app/assets/images/lemons.jpg"),
    filename: "lemons.jpg",
    content_type: "image/jpg")

    # ---   

  listing9 = Listing.create(
    title: "Silverbeet",
    price: 3,
    qty: 2,
    description: "Rainbow beet, great in salads",
    category_id: 1,
    subcategory_id: 36,
    uom_id: 6,
    user_id: 4)

  listing9.photo.attach(
    io: File.open("app/assets/images/silverbeet-rainbow.jpg"),
    filename: "silverbeet-rainbow.jpg",
    content_type: "image/jpg")

    # ---  

  listing10 = Listing.create(
    title: "Figs",
    price: 5,
    qty: 1,
    description: "Perfectly ripe",
    category_id: 2,
    subcategory_id: 55,
    uom_id: 5,
    user_id: 3) 

  # ---

  listing11 = Listing.create(
    title: "Black Grapes",
    price: 2,
    qty: 5,
    description: "Perfectly ripe, small seeds",
    category_id: 2,
    subcategory_id: 56,
    uom_id: 5,
    user_id: 4)

  listing11.photo.attach(
    io: File.open("app/assets/images/grapes-black.jpg"),
    filename: "grapes-black.jpg",
    content_type: "image/jpg")

  # ---  


puts "--------------"
puts "Added #{Listing.all.count} listings"
puts "--------------"
