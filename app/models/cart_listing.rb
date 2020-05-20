class CartListing < ApplicationRecord
  # Model relations to establish a joining table between listing and cart:
  belongs_to :listing
  belongs_to :cart
end
