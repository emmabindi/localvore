class CartsController < ApplicationController
  def index
    @cart = current_user.cart.listings
  end

  def create
    if !current_user.cart 
      cart = Cart.create(completed: false, user_id: current_user.id)
    else 
      cart = current_user.cart
    end
    listing = Listing.find(params[:listing_id])
    cart.listings << listing
    redirect_to listings_path
  end
end
