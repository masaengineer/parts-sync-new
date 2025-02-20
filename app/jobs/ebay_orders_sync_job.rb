class EbayOrdersSyncJob < ApplicationJob
  queue_as :default

  # エラー時の再試行設定
  retry_on Ebay::FulfillmentService::FulfillmentError, wait: 5.seconds, attempts: 3
  retry_on ActiveRecord::RecordInvalid, wait: 5.seconds, attempts: 3

  def perform
    Rails.logger.info "=== eBay注文同期開始 ==="

    user = User.first

    # eBay APIからデータを取得するサービス
    orders_data = Ebay::FulfillmentService.new.fetch_orders(user)

    # 取得したデータをインポート
    Ebay::OrderDataImportService.new(orders_data).import(user)

    Rails.logger.info "✅ eBay注文同期完了"
  rescue Ebay::FulfillmentService::FulfillmentError => e
    Rails.logger.error "❌ eBay API エラー: #{e.message}"
    Rails.logger.error e.backtrace.join("\n")
    raise  # 再試行のために例外を再度発生
  rescue StandardError => e
    Rails.logger.error "❌ 予期せぬエラー: #{e.message}"
    Rails.logger.error e.backtrace.join("\n")
    raise  # 再試行のために例外を再度発生
  end
end
