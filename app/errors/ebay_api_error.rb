class EbayApiError < StandardError
  def initialize(msg = "eBay API Error occurred")
    super
  end
end
