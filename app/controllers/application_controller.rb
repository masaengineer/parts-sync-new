class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected

  def configure_permitted_parameters
    # サインアップ時のパラメータ許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
    # アカウント更新時のパラメータ許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name])
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
