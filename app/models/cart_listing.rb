class CartListing < ApplicationRecord
  # Model relations to establish a joining table
  # etween listing and cart:
  belongs_to :listing
  belongs_to :cart
end
