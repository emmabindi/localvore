<div style="text-align: justify"> 

--- 
# LocalVore
*“One who eats only locally-grown foods”*

### **LocalVore: the neighbourly fresh produce marketplace.** 

LocalVore is a two-sided marketplace which enables users to find fresh homegrown produce - within bike riding distance from home, and provides a platform for avid gardeners to share their homegrown bounty and connect with their community. 

--- 
## Contents: 

1. Links 
2. Setup Instructions & Logins
3. Overview & Problem 
4. User Stories 
5. Planning & Project Management 
6. Wireframes & Sitemap
7. Entity Relationships 
8. ERD 
9. Database Schema Design
10. Design Methodology: Normalisation, Data Integrity, Query Efficiency, Eager/Lazy 
11. Third Party Services 

--- 

## 1. Links

### Heroku: https://git.heroku.com/radiant-shelf-48298.git

### Github: https://github.com/emmabindi/localvore.git

--- 
## 2. Setup Instructions
- Clone this repo
- Bundle install to install all required dependencies
- Rake db:setup to create local database migrate and seed
- Rails s to run the rails server
- Load http://localhost:3000/ in the browser

### Logins

Email  | Password | 
--- | --- | ---
e@gmail.com   | `111111` | 
l@gmail.com   | `111111` | 
b@gmail.com   | `111111` | 
j@gmail.com   | `111111` | 


---
## 3. Overview & Problem

Purpose: Problem I am solving?   
Connecting communities so users can source locally grown fresh produce and growers can share excess produce from their bounty 
Increasing biodiversity (not every grower needs to plant the same as Bob can grow eggplants and Jane can grow tomatos according to their space)
slow food - high nutritional value as little time from soil to table 
Less travel = better eco footprint
More likely organic
Less waste and plastic packaging 
Small yards / little time / different harvest schedules 
Swap without use of money … 


Functionality/Features:
Target Audience: 

--- 

## 4. User Stories 


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
### 5. Planning & Project Management 

Describe the way tasks are planned and tracked in your project

MVP   
Trello   
Hand Written   
Tracking / readjusting 

--- 

--- 

### 6. Wireframes & Sitemap

`Site Map:`   
![Site Map](/app/assets/images/wireframes/Sitemap.png)

`Mood Board:`  
![Mood Board](/app/assets/images/moodboard.png)

`Wireframe Welcome Page:`  
![Wireframe - Welcome](/app/assets/images/wireframes/Home.png)

`Wireframe Find Produce:`  
![Wireframe - Find Produce](/app/assets/images/wireframes/Find-Produce-Page.png)

`Wireframe View Produce Listing:`  
![Wireframe - View Produce Listing](/app/assets/images/wireframes/View-Produce-Listing.png)

`Wireframe Add Produce Listing:`  
![Wireframe - Add Produce Listing](/app/assets/images/wireframes/Add-A-Listing.png)

`Wireframe User Sign Up:`  
![Wireframe - User Sign Up](/app/assets/images/wireframes/User-Sign-Up.png)

---

### 7. Entity Relationships 


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

Explain the different high-level components (abstractions) in your App

it means talking about how your app is using inheritance to get the rails higher level components

for instance your model files are inheriting from ApplicationRecord (Active Record)

so you'd explain how by inheriting from active record you get heaps of extra methods

that then allow you to do CRUD actions on your db

you could also talk about ApplicationController
or talk about erb


---- 
Describe your project’s models in terms of the relationships (active record associations) they have with each other 

--- 

Discuss the database relations to be implemented

--- 
Provide your database schema design

 
--- 
normalised database model
minimising database calls
eager loading vs lazy loading 
sanitise and validate inputs to maintain data integrity 
code commenting

--- 
### 8. ERD 

`LocalVore ERD:`  
![LocalVore ERD](app/assets/images/MarketplaceERB.png)

--- 
### 9. Database Schema Design 

``` 
insert 
```
--- 

10. Design Methodology: Normalisation, Data Integrity, Query Efficiency, Eager/Lazy 

Normalisation through schema design


Data Integrity: sanitize and validate through permitted and required parameters 
validations in the models for length or presence 

Query efficiency through use of includes 

Lazy Loading aachieved through pagination: 
--- 

--- 

### 11. Third Party Services

3rd Party Service  |  | 
--- | :---: | :---
**Rspec-rails** | What id it, Why did I use it | 
**Bootstrap** | What id it, Why did I use it | 
**Devise** | What id it, Why did I use it | 
**Cancancan** | What id it, Why did I use it | 
**Stripe** | What id it, Why did I use it | 
**Ultrahook** | What id it, Why did I use it | 
**Ransack** | What id it, Why did I use it | 
**Rails_12factor** | App not able to access jquery_ujs which assist with delete method working in Heroku, also helps in serving static assets in Heroku | 
**Will_Paginate** | Ruby gem to implemented pagination for the listings index - this limits the number of images/listings loaded on the index landing page which will increase efficiency once the listings count is high. Allows user to move through pages with links at the bottom of the listings view and provides page count (... Next) | 
**Geocoder** | Gem | 
**Leaflet** | Javascript client side library for displaying maps | 
**Sanitize** | Ruby gem which sanitizes html and css inputs (received in from user inputs through fields such as 'title' or 'description' in the add produce listing forms, and strips them of any malicious content) | 


---

PowerPoint Info: 

Learnings / Challenges 
- extensive use of git branching to develop features before merging into master file 
- nested attributes 
- customisation of devise and sanitizer permissions 
- rspec / TDD for models User and Listing
- seeding: attaching individual images to listings 
- using a new gem ransack 
- jquery upgrade broke my hamburger menu 
- cart implementation
- use of Stripe and webhooks for first time (ultrahook api)
- use of Google Maps API, MapBox and Leaflet javascript library - learning to understand and debug new types of errors
- Heroku deployment - database reset and familiarity with new commands 

Points 
- use of partials to ensure code is dry: image-logic partial to handle the conditional treatment of whether photo is uploaded and if not, to display a default sketch image - affects index and show views 
- use of form partial 
- use of nav partial 

Stretch Goals: 
- Qty function 
- Email for order confirmation 
- Messaging within app between growers & buyers
- Shopping Cart bugs: currently sellers can purchase their own produce, items still display once sold, 
- Map: markers to link to the grower profile

</div>