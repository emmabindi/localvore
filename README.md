
--- 
# Localvore
*“one who eats only locally-grown foods”*
buy, sell and swap locally grown, fresh produce 
a neighbourly fresh produce marketplace 
find fresh homegrown produce - within bike riding distance from your home + share your home grown bounty and connect with your community 

# Heroku: https://git.heroku.com/radiant-shelf-48298.git

# Github: https://github.com/emmabindi/localvore.git

--- 
Setup Instructions
Clone this repo
bundle install to install all required dependencies
rake db:setup to create local database migrate and seed
rails s to run the rails server
Load http://localhost:3000/ in the browser

---

Logins

e@gmail.com
l@gmail.com
b@gmail.com
j@gmail.com

All passwords are set to 111111

---


Purpose: Problem I am solving? 
Connecting communities so users can source locally grown fresh produce and growers can share excess produce from their bounty 
Increasing biodiversity (not every grower needs to plant the same as Bob can grow eggplants and Jane can grow tomatos according to their space)
slow food - high nutritional value as little time from soil to table 
Less travel = better eco footprint
More likely organic
Less waste and plastic packaging 
Small yards / little time / different harvest schedules 
Swap without use of money … 

Sitemap:
Functionality/Features:
Target Audience: 

--- 
ERD / Entities & Relations


Users: has many listings, has one cart, has one bio, has one profile_photo, has one location, has many conversations?, has many orders 

Listings: belong to a user, has_one_attached :photo, enum (avail/not) has_many cart_listings, has many carts through cart_listings, 
<!-- price / description / keywords / cat / type / qty -->

Quantity: has many listings
Category: has many listings
Type: has many listings

Cart: has many cart_listings, has many listings through cart_listing, belongs to User
Cart_listing (joining table) belongs to listing, belongs to cart

Location: has one address ...  belongs to a user 

Conversations: have many messages, 
Messages - belong to a conversation, belong to a user 
User_conversation - belongs to user, belogns to conversation (JONING TABLE)

<!-- Order: belongs to user, 
OrdersListing join table?  -->


--- 
# User Stories

## Persona's

Persona 1 : Buyer 
Aged 25 - 35, wants to use a simple app to locate a seller & find the produce they are looking for in less than 5 minutes so they can purchase organic homegrown produce within bike ride distance of their house rather than giving their $ to big supermarkets 

Persona 2 : Seller 
Aged 35 - 50, has a larger backyard space and uses it to grow produce however bounty is greater than the household needs. Seeks to share or sell the bounty with neighbours to swap for produce they do not grow or receive funds to reinvest into gardening tools or resources. Seeks connection and purpose through gardening and also meeting their customers and sharing recipe ideas and gardening tips


### Guest
- As a guest to the marketplace, I want to search products, view listings and growers without having to sign up 
- As a guest, I want to sign up securely and become a buyer or sell my produce as a grower (or both) 

### Growers 
- As a grower, I want to create my profile to display information about me and my growing practises and also share my values 
- As a grower looking to sell or share my produce, I want to share as much detail about my produce such as photos, description, quantity etc 
- As a grower, I want to be paid by cash or through my bank account or share my bounty for free 
- As a grower, I want to organise my listings according to category and type and include filters for features such as organically grown items 
- As a grower, I want to set a price for my produce 
- As a grower, I want to answer questions about my produce by allowing buyers to message me 
<!-- - As a grower I want to be able to re-use listings and toggle if the item is available or not available depending on harvest days  -->
- As a grower I want to view my sales history 

### Buyers 
- As a buyer, I want to easily find the produce I am searching for using keywords and category filtering
- As a buyer I want to know the distance between myself and the grower to ensure I am within bike riding distance  FILTER BY LOCATION 
- As a buyer, I want to know the details of the produce 
- As a buyer, I want to be able to view the growers profile and get to know their growing procedures 
- As a buyer, I want to be able to select the item for purchasing including the quantity needed and add it to a shopping basket
- As a buyer I want to be able to view produce listings of a grower (so that I can buy as much as possible from one grower) FILTER BY GROWER
- As a buyer I want to be able to message a seller and offer trade or arrange pickup 
- As a buyer I want to be able to pay for my shopping cart and complete a transaction 
- As a buyer I want to see my order history 


```fix
option to settle a shopping cart by trade / swap instead of 
```
--- 


Third party 

rspec
bootstrap 
devise
cancancan 
stripe 
ultrahook api
ransack 
---


Learnings / Challenges 
- extensive use of git branching to develop features before merging into master file 
- nested attributes 
- customisation of devise and sanitizer permissions 
- rspec / TDD for models User and Listing
- seeding: attaching individual images to listings 
- using a new gem ransack 


Points 
- use of partials to ensure code is dry: image-logic partial to handle the conditional treatment of whether photo is uploaded and if not, to display a default sketch image - affects index and show views 
- use of form partial 
- use of nav partial 