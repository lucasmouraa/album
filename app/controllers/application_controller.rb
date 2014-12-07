class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :login
    devise_parameter_sanitizer.for(:sign_up) << :nome
    devise_parameter_sanitizer.for(:sign_up) << :cidade
    devise_parameter_sanitizer.for(:sign_up) << :estado
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:sign_up) << :sobre_voce
devise_parameter_sanitizer.for(:sign_up) << :email
  end


  protect_from_forgery with: :exception


end
