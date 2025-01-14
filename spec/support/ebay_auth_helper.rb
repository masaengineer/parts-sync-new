module EbayAuthHelper
  def stub_ebay_credentials
    allow(Rails.application.credentials).to receive(:dig).with(:ebay).and_return(dummy_credentials)
    allow(Rails.application.credentials).to receive(:dig).with(:ebay, :environment).and_return('sandbox')
    allow(Rails.application.credentials).to receive(:dig).with(:ebay, :sandbox).and_return(dummy_credentials[:sandbox])
  end

  def stub_oauth_token_request(success: true)
    if success
      stub_request(:post, "https://api.sandbox.ebay.com/identity/v1/oauth2/token")
        .to_return(
          status: 200,
          headers: { 'Content-Type' => 'application/json' },
          body: {
            access_token: 'dummy_access_token',
            token_type: 'Bearer',
            expires_in: 7200
          }.to_json
        )
    else
      stub_request(:post, "https://api.sandbox.ebay.com/identity/v1/oauth2/token")
        .to_return(
          status: 400,
          headers: { 'Content-Type' => 'application/json' },
          body: {
            error: 'invalid_scope',
            error_description: 'The requested scope is invalid'
          }.to_json
        )
    end
  end

  def dummy_credentials
    {
      environment: 'sandbox',
      sandbox: {
        client_id: 'dummy_client_id',
        client_secret: 'dummy_client_secret',
        dev_id: 'dummy_dev_id',
        marketplace_id: 'EBAY_US',
        api_endpoint: 'https://api.sandbox.ebay.com',
        runame: 'dummy_runame'
      }
    }
  end
end

RSpec.configure do |config|
  config.include EbayAuthHelper
end
