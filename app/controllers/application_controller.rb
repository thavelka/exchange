class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |field| field.permit(:first_name, :last_name, :netID, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |field| field.permit(:first_name, :last_name, :netID, :email, :password, :password_confirmation) }    
  end
  
end
