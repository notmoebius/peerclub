class ApplicationController < ActionController::Base
  add_flash_types :success, :danger, :info, :notice
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :first_name, :last_name, :date_of_birth, :description, :job])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :first_name, :last_name, :date_of_birth, :description, :job])
  end

end