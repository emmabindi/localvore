class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  # Retrieves the listings which the buyer successfully paid for, stores into a variable for accessing from view page:
  def success
    @listings = current_user.carts.last.listings
    # Creates a new empty cart for the user and their next purchase:
    Cart.create(completed: false, user_id: current_user.id)
  end

  # Retrieves real time information from Stripe whether payment of cart was successful, if so, marks those listings as sold:
  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_ids = payment.metadata.listing_ids.split(",")
    listings = []
    listing_ids.each do |id|
      listing = Listing.find(id)
      listing.sold = true
      listing.save
    end
    user = User.find(payment.metadata.user_id)
    cart = user.carts.last
    cart.completed = true
    cart.save
    # need to destroy the cart
    head 200
  end

  # Provides Stripe gateway with the details of the cart items:
  def get_stripe_id
    @listings = current_user.carts.last.listings
    line_items = @listings.map do |listing|
      {
        name: listing.title,
        description: listing.description,
        amount: listing.price * 100,
        currency: 'aud',
        quantity: 1,
      }
    end
    # Obtains the listing ids and creates an array to be used in the webhook:
    listing_ids = @listings.pluck(:id).join(",")
    # Setup a payment session with Stripe:
    session_id = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: line_items,
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          listing_id: listing_ids
        }
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingId=#{listing_ids}",
      cancel_url: "#{root_url}listings"
    ).id
    render :json => { id: session_id, stripe_public_key: Rails.application.credentials.dig(:stripe, :public_key) }
  end
end
