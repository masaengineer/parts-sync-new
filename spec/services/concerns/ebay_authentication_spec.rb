require 'rails_helper'

# テスト用のダミークラス
class DummyEbayService
  include EbayAuthentication
end

RSpec.describe EbayAuthentication, type: :service, skip_db: true do
  let(:dummy_credentials) do
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

  let(:dummy_token_response) do
    {
      'access_token' => 'dummy_access_token',
      'token_type' => 'Bearer',
      'expires_in' => 7200
    }
  end

  let(:service) { DummyEbayService.new }

  before do
    # credentialsのモック
    allow(Rails.application.credentials).to receive(:dig).with(:ebay).and_return(dummy_credentials)
    allow(Rails.application.credentials).to receive(:dig).with(:ebay, :environment).and_return('sandbox')
    allow(Rails.application.credentials).to receive(:dig).with(:ebay, :sandbox).and_return(dummy_credentials[:sandbox])
  end

  describe '#initialize' do
    context 'デフォルトの初期化' do
      it '環境設定を正しく読み込む' do
        expect(service.instance_variable_get(:@environment)).to eq(:sandbox)
      end

      it '認証情報を正しく読み込む' do
        credentials = service.instance_variable_get(:@credentials)
        expect(credentials[:client_id]).to eq('dummy_client_id')
        expect(credentials[:marketplace_id]).to eq('EBAY_US')
      end
    end

    context '環境を指定して初期化' do
      let(:service) { DummyEbayService.new(environment: :production) }

      it '指定された環境を使用する' do
        expect(service.instance_variable_get(:@environment)).to eq(:production)
      end
    end

    context 'ユーザートークンを指定して初期化' do
      let(:service) { DummyEbayService.new(user_token: 'user_token') }

      it 'ユーザートークンを access_token として使用する' do
        expect(service.instance_variable_get(:@access_token)).to eq('user_token')
      end
    end
  end

  describe '#authorization_headers' do
    before do
      service.instance_variable_set(:@access_token, 'test_token')
    end

    it '正しいヘッダー情報を返す' do
      headers = service.send(:authorization_headers)
      expect(headers['Authorization']).to eq('Bearer test_token')
      expect(headers['Content-Type']).to eq('application/json')
      expect(headers['X-EBAY-C-MARKETPLACE-ID']).to eq('EBAY_US')
    end
  end

  describe '#oauth_client' do
    let(:oauth_client) { service.send(:oauth_client) }

    it 'OAuth2::Clientインスタンスを返す' do
      expect(oauth_client).to be_a(OAuth2::Client)
    end

    it '正しい設定でクライアントを初期化する' do
      expect(oauth_client.id).to eq('dummy_client_id')
      expect(oauth_client.site).to eq('https://api.sandbox.ebay.com')
    end
  end

  describe '#authorization_url' do
    let(:state) { 'test_state' }
    let(:auth_url) { service.send(:authorization_url, state: state) }

    it '正しい認可URLを生成する' do
      expect(auth_url).to include('https://api.sandbox.ebay.com/oauth2/authorize')
      expect(auth_url).to include('dummy_runame')
      expect(auth_url).to include('test_state')
      expect(auth_url).to include(CGI.escape('https://api.ebay.com/oauth/api_scope/sell.fulfillment'))
    end
  end

  describe '#fetch_access_token' do
    let(:oauth_client) { instance_double(OAuth2::Client) }
    let(:client_credentials) { instance_double(OAuth2::Strategy::ClientCredentials) }
    let(:access_token) { instance_double(OAuth2::AccessToken, token: 'new_access_token') }

    before do
      allow(service).to receive(:oauth_client).and_return(oauth_client)
      allow(oauth_client).to receive(:client_credentials).and_return(client_credentials)
      allow(client_credentials).to receive(:get_token).and_return(access_token)
    end

    it 'アクセストークンを取得する' do
      token = service.send(:fetch_access_token)
      expect(token).to eq('new_access_token')
    end

    context 'エラーが発生した場合' do
      before do
        allow(client_credentials).to receive(:get_token).and_raise(
          OAuth2::Error.new(OpenStruct.new(body: '{"error":"invalid_scope"}'))
        )
      end

      it 'EbayAuthenticationErrorを発生させる' do
        expect { service.send(:fetch_access_token) }.to raise_error(EbayAuthenticationError)
      end
    end
  end

  describe '#handle_response' do
    let(:success_response) { OpenStruct.new(code: 200, body: '{"success":true}') }
    let(:error_response) { OpenStruct.new(code: 401, body: '{"error":"unauthorized"}') }

    context '成功レスポンスの場合' do
      it 'パースされたレスポンスを返す' do
        result = service.send(:handle_response, success_response)
        expect(result).to eq({ 'success' => true })
      end
    end

    context '認証エラーの場合' do
      before do
        allow(service).to receive(:fetch_or_refresh_token).and_return('new_token')
        allow(service).to receive(:retry_request)
      end

      it 'トークンを更新してリトライする' do
        expect(service).to receive(:retry_request)
        service.send(:handle_response, error_response)
      end
    end
  end

  describe '#api_scopes' do
    it '正しいスコープを返す' do
      scopes = service.send(:api_scopes)
      expect(scopes).to include('https://api.ebay.com/oauth/api_scope')
      expect(scopes).to include('https://api.ebay.com/oauth/api_scope/sell.fulfillment')
    end
  end
end
