# frozen_string_literal: true

class Ability
  include CanCan::Ability

  # Defines the actions users can perform dependant on whether they are logged in and allows edit/update/deletion of listings to only be performed by the user who created the listing:
  def initialize(user)
    user ||= User.new
    can [:index, :show, :new, :create], Listing
    can [:edit, :update, :destroy], Listing, user_id: user.id
  end
end
