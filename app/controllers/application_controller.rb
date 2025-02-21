class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :skip_authentication?

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected

  def configure_permitted_parameters
    # サインアップ時のパラメータ許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :last_name, :first_name, :email, :password, :password_confirmation, :agreement ])
    # アカウント更新時のパラメータ許可
    devise_parameter_sanitizer.permit(:account_update, keys: [ :last_name, :first_name, :email, :password, :password_confirmation, :agreement ])
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private

  def skip_authentication?
    # 静的ページ
    return true if controller_name == 'static_pages'

    # デバイス関連のページ
    return true if devise_controller?

    # SNSクローラーからのアクセス
    return true if crawler?

    false
  end

  def crawler?
    # 主要なSNSクローラーのUser-Agentをチェック
    crawler_user_agents = [
      'Twitterbot',
      'facebookexternalhit',
      'LinkedInBot',
      'line-poker',
      'Slackbot',
      'Discordbot',
      'WhatsApp',
      'Slack-ImgProxy',
      'Googlebot',
      'bingbot'
    ]

    crawler_user_agents.any? { |bot| request.user_agent&.include?(bot) }
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
