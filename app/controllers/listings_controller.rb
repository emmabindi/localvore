class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @listings = Listing.all
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
    # if @listing.update(listing_params)
    # redirect_to listings_path(@listing.id)
    # else
    #   render :edit
    # end
    @listing.update(listing_params)

    redirect_to @listing
  end

  def destroy
    @listing.destroy

    redirect_to listings_path
  end

  private 

  def listing_params
    params.require(:listing).permit(:title, :photo, :price, :qty, :description, :uom_id, :category_id, :subcategory_id)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end

end
