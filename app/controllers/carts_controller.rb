class CartsController < ApplicationController
  def index
    if user_signed_in? && current_user.carts.last
      @cart = current_user.carts.last.listings
      @listing_ids = @cart.map do |listing|
        listing.id
      end
    else
      redirect_to listings_path
    end
    @total = cart_total
  end

  def create
    if current_user.carts.empty?
      cart = Cart.create(completed: false, user_id: current_user.id)
    else
      cart = current_user.carts.last
    end
    listing = Listing.find(params[:listing_id])
    cart.listings << listing
    redirect_to listings_path
  end

  private

  # Calculate total price of all produce within the cart
  def cart_total
    sum = 0
    @cart.each do |cart_item|
      sum += cart_item.price
    end
    return sum
  end
end
