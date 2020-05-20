class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    # Search queries are redirected to the index of listings and displays only listings which meet criteria of the search query. 
    # The '.includes' allows search to be performed upon related objects and loads each listings category/subcategory/uom & user 
    # The index of listings is limited to show a maximum per page as per parameters in listing model
    @listings = @q.result.includes(:category, :subcategory, :uom, :user).with_attached_photo.page params[:page]
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.create(listing_params)
    if @listing.errors.any?
      render :new
    else
      flash[:success] = "You successfully added a new listing 🌱"
      redirect_to @listing
    end
  end

  def edit
  end

  def update
    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private 
  # Sets list of parameters that are allowed for listings
  def listing_params
    params.require(:listing).permit(:title, :photo, :price, :qty, :description, :uom_id, :category_id, :subcategory_id)
  end

  # Gets the listing using the listing_id and stores in a variable 
  def find_listing
    @listing = Listing.find(params[:id])
  end
end
