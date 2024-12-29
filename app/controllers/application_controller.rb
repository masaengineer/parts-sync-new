class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected

  def configure_permitted_parameters
    # サインアップ時のパラメータ許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :email, :password, :password_confirmation, :agreement])
    # アカウント更新時のパラメータ許可
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name])
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

  def flash_message(key, resource_name = nil)
    t(key, resource: resource_name, scope: 'flash_messages')
  end

  def flash_success(key, resource_name = nil)
    flash[:success] = flash_message(key, resource_name)
  end

  def flash_error(key, resource_name = nil)
    flash[:error] = flash_message(key, resource_name)
  end

  def flash_notice(key, resource_name = nil)
    flash[:notice] = flash_message(key, resource_name)
  end

  def flash_alert(key, resource_name = nil)
    flash[:alert] = flash_message(key, resource_name)
  end
end
