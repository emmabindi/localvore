class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # Loads the users listing summary into a variable which is used to display on the 'meet the grower page'
    @user_listings = @user.listings
  end
end
