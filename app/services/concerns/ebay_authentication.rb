module EbayAuthentication
  extend ActiveSupport::Concern

  included do
    include HTTParty
  end

  def initialize
    @credentials = {
      client_id: Rails.application.credentials.ebay[:client_id],
      client_secret: Rails.application.credentials.ebay[:client_secret],
      dev_id: Rails.application.credentials.ebay[:dev_id],
      marketplace_id: Rails.application.credentials.ebay[:marketplace_id]
    }
    @access_token = fetch_or_refresh_token
  end

  private

  def authorization_headers
    {
      'Authorization' => "Bearer #{@access_token}",
      'Content-Type' => 'application/json',
      'X-EBAY-C-MARKETPLACE-ID' => @credentials[:marketplace_id],
      'X-EBAY-API-DEV-NAME' => @credentials[:dev_id]
    }
  end

  def fetch_or_refresh_token
    cached_token = Rails.cache.read('ebay_access_token')
    return cached_token if cached_token.present?

    new_token = fetch_access_token
    Rails.cache.write('ebay_access_token', new_token, expires_in: 1.hour)
    new_token
  end

  def fetch_access_token
    client = OAuth2::Client.new(
      @credentials[:client_id],
      @credentials[:client_secret],
      site: base_url,
      token_url: '/identity/v1/oauth2/token'
    )

    # デバッグ用ログ
    Rails.logger.debug "eBay API Credentials:"
    Rails.logger.debug "Client ID: #{@credentials[:client_id]}"
    Rails.logger.debug "Dev ID: #{@credentials[:dev_id]}"
    Rails.logger.debug "Marketplace ID: #{@credentials[:marketplace_id]}"
    Rails.logger.debug "Scopes: #{api_scopes.join(' ')}"
    Rails.logger.debug "Base URL: #{base_url}"

    begin
      token = client.client_credentials.get_token(
        scope: api_scopes.join(' '),
        headers: { 'X-EBAY-API-DEV-NAME' => @credentials[:dev_id] }
      )
      token.token
    rescue OAuth2::Error => e
      Rails.logger.error "eBay OAuth Error: #{e.message}"
      Rails.logger.error "Response: #{e.response.body}"
      raise
    end
  end

  def base_url
    Rails.application.credentials.ebay[:sandbox] ?
      'https://api.sandbox.ebay.com' :
      'https://api.ebay.com'
  end

  def handle_response(response)
    case response.code
    when 200
      JSON.parse(response.body)
    when 401
      @access_token = fetch_or_refresh_token
      retry_request
    else
      log_error(response)
      raise EbayApiError.new("eBay API Error: #{response.code} - #{response.body}")
    end
  end

  def api_scopes
    raise NotImplementedError, "#{self.class} must implement #api_scopes"
  end

  def log_error(response)
    Rails.logger.error("[eBay API Error] #{self.class}: #{response.code} - #{response.body}")
  end
end
