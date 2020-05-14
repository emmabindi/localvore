class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_query

  # Error msg for handling when user is not authorised by CanCan to perform the action attempted (redirects and displays msg):
  rescue_from CanCan::AccessDenied do |exception|
    flash[:authorization_error] = "You are not authorized to perform that action"
    redirect_to listings_path
  end 

  def set_query
    @q = Listing.ransack(params[:q])
  end

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :surname, :email, :bio, :profile_photo, location_attributes: [:country, :state, :city, :suburb, :street_address]]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    
    # need to add ability to edit address ***:
    devise_parameter_sanitizer.permit(:account_update) do |u| 
      u.permit(:first_name, :surname, :profile_photo, :bio, :email, :password, :password_confirmation, :current_password) 

    end
  end
end
