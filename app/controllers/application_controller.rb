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
    devise_parameter_sanitizer.for(:account_update) << :login
    devise_parameter_sanitizer.for(:account_update) << :nome
    devise_parameter_sanitizer.for(:account_update) << :cidade
    devise_parameter_sanitizer.for(:account_update) << :estado
    devise_parameter_sanitizer.for(:account_update) << :avatar
    devise_parameter_sanitizer.for(:account_update) << :sobre_voce
    devise_parameter_sanitizer.for(:account_update) << :email
  end
         def after_sign_in_path_for(resource)
			iniciallogin_index_path
		end
		
		def after_sign_out_path_for(resource)
			inicial_index_path
		end



  protect_from_forgery with: :exception


end
