class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_query

  # Error msg for handling when user is not authorised by CanCan to perform the action attempted (redirects and displays msg):
  rescue_from CanCan::AccessDenied do |exception|
    flash[:authorization_error] = "You are not authorized to perform that action"
    redirect_to listings_path
  end 

  # Setting search query object as @q before every action. Set in this model as search is performed in sidebar which is accessed in multiple views
  def set_query
    @q = Listing.with_attached_photo.ransack(params[:q])
  end

  protected
  
  #Allowing users to complete any of the below fields upon registering as a member 
  def configure_permitted_parameters
    attributes = [:first_name, :surname, :email, :bio, :profile_photo, location_attributes: [:country, :state, :city, :suburb, :street_address]]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    
  #Allowing users to update any of the below fields once an existing member 
    devise_parameter_sanitizer.permit(:account_update) do |u| 
      u.permit(:first_name, :surname, :profile_photo, :bio, :email, :password, :password_confirmation, :current_password, location_attributes: [:country, :state, :city, :suburb, :street_address]) 
    end
  end
end
