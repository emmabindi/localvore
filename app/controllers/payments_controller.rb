class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def get_stripe_id
    @listing = Listing.find(params[:id])
    session_id = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,

      # CHANGE THIS TO BE AN ARRAY OF MULTIPLE HASHES
      line_items: [{
        name: @listing.title,
        amount: @listing.price * 100,
        currency: 'aud',
        quantity: 1,
      }],
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          # CHANGE THIS TO BE AN ARRAY OF LISTING_IDS
          listing_id: @listing.id
        }
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingId=#{@listing.id}",
      cancel_url: "#{root_url}listings"
    ).id
    render :json => {id: session_id, stripe_public_key: Rails.application.credentials.dig(:stripe, :public_key)}
  end

  def success
    @listing = Listing.find(params[:listingId])
  end

  def webhook
    payment_id= params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    user_id = payment.metadata.user_id
    p "listing id " + listing_id
    p "user id " + user_id
    head 200
  end
end