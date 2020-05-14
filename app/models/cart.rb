class Cart < ApplicationRecord
  has_many :cart_listings
  has_many :listings, through: :cart_listings
  belongs_to :user

  # consider grower and qty
  
  def calculate_total_price
    sum = 0
    for listing in cart_listings
      sum =+ listing.price 
    end
  end
end
