class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

  rescue_from Pundit: :NotAuthorizedError do
    redirect_to root_path, alert: "Voce não tem permissão para acessar esta pagina!"
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role, :department])
    
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role, :department])
  end
end
