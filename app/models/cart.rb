class Cart < ApplicationRecord
  # Model relations, connected to a user, holds the listings which the user has added:
  has_many :cart_listings
  has_many :listings, through: :cart_listings
  belongs_to :user
end
