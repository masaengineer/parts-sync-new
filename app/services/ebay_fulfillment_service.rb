class EbayFulfillmentService
  include EbayAuthentication

  base_uri 'https://api.ebay.com'

  def get_orders(params = {})
    response = self.class.get('/sell/fulfillment/v1/order', {
      headers: authorization_headers,
      query: params
    })
    handle_response(response)
  end

  def get_order(order_id)
    response = self.class.get("/sell/fulfillment/v1/order/#{order_id}", {
      headers: authorization_headers
    })
    handle_response(response)
  end

  private

  def api_scopes
    [
      'https://api.ebay.com/oauth/api_scope',
      'https://api.ebay.com/oauth/api_scope/sell.fulfillment'
    ]
  end
end
