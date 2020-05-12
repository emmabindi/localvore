class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    flash[:authorization_error] = "You are not authorized to perform that action"
    redirect_to listings_path
  end 

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :surname, :email]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)

    devise_parameter_sanitizer.permit(:account_update) do |u| 
      u.permit(:first_name, :surname, :profile_photo, :bio, :email, :password, :password_confirmation, :current_password) 
    end

  end
end
