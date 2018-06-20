class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cart

  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
  end

  private

    def set_cart

      if session[:cart]
        @cart = session[:cart]
      else
        session[:cart] = []
        @cart = session[:cart]
      end

    end

end
