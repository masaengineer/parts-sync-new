module Ebay
  class FulfillmentService
    def initialize
      @client = EbayApi::Client.new(
        app_id: Rails.application.credentials.ebay[:app_id],
        dev_id: Rails.application.credentials.ebay[:dev_id],
        oauth_token: Rails.application.credentials.ebay[:oauth_token]
      )
    end

    # eBayから注文情報を取得する既存メソッド（参考実装）
    def fetch_order(order_id)
      @client.get_order(order_id)
    end

    # -------------------------
    # ここから追加したサンプルメソッド
    # -------------------------
    # APIから対象のorder_idの注文を取得し、DBへ保存するメソッドです。
    # 使い方:
    #   Ebay::FulfillmentService.new.import_order_from_ebay("19-11396-02421")
    #
    def import_order_from_ebay(order_id)
      # eBay APIから注文データを取得
      order_data = fetch_order(order_id)
      return if order_data.nil?

      # 支払いがPAIDでない場合は取り込みをスキップ
      # (paymentSummary.payments配列のうち1つでも "paymentStatus" == "PAID" があればOKかどうかは要件次第)
      payment_info = order_data.dig("paymentSummary", "payments")&.first
      return unless payment_info&.dig("paymentStatus") == "PAID"

      # DBへ保存するメソッドを呼び出し
      persist_order(order_data)
    end

    private

    # eBayの注文データをDBレコードに保存・更新するメソッド
    # (すべての処理をまとめると長くなるので、パーツ毎にプライベートメソッドへ切り出すと良い)
    def persist_order(order_data)
      ActiveRecord::Base.transaction do
        # 1) ordersテーブルへ保存
        #    orderIdを order_number として利用、既存のorder_numberと重複する場合はupdateする想定
        order = Order.find_or_initialize_by(order_number: order_data["orderId"])
        order.sale_date = order_data["creationDate"]&.to_date
        # 誰の注文か判別できない場合、一旦 user_id=1 など固定にしておき、必要なら後で付け替える
        order.user_id = 1 if order.new_record?
        order.save!

        # 2) salesテーブルへ保存 (order_gross_amount, order_net_amountなど)
        sale = Sale.find_or_initialize_by(order_id: order.id)
        sale.order_gross_amount = order_data.dig("pricingSummary", "total", "value")
        sale.order_net_amount   = order_data.dig("paymentSummary", "totalDueSeller", "value")
        sale.save!

        # 3) SKUs と OrderSkuLinks の保存 (lineItems配列をループ)
        line_items = order_data["lineItems"] || []
        line_items.each do |line_item|
          sku = Sku.find_or_initialize_by(sku_code: line_item["sku"])
          sku.international_title = line_item["title"]
          sku.sku_gross_amount    = line_item.dig("lineItemCost", "value")
          sku.quantity            = line_item["quantity"]
          # 手数料をSKU単位に反映したい場合は、totalMarketplaceFeeを按分するロジックを入れる
          # e.g. sku_net_amount = sku_gross_amount - (line_itemごとの手数料)
          # ここでは簡易的に「sku_gross_amountと同額を仮でnetにしておく」例
          sku.sku_net_amount = sku.sku_gross_amount
          sku.save!

          # order_sku_linksテーブルも紐づけ
          OrderSkuLink.find_or_create_by!(order_id: order.id, sku_id: sku.id)
        end

        # 4) payment_feesテーブルへ保存する例 (totalMarketplaceFeeがある場合)
        #    fee_categoryは任意の文字列を入れて管理
        if (marketplace_fee = order_data.dig("totalMarketplaceFee", "value"))
          payment_fee = PaymentFee.find_or_initialize_by(order_id: order.id, fee_category: "marketplace_fee")
          payment_fee.fee_amount = marketplace_fee
          payment_fee.save!
        end

        # 5) shipmentsテーブルへ保存する例 (fulfillmentHrefs配列からtracking_numberを抽出)
        #    例: "shipping_fulfillment/EX00000009909220001020002E0N" の最後の部分をトラッキング番号にする
        #    fulfillmentHrefsが複数あるケースは要件次第で拡張
        shipment_urls = order_data["fulfillmentHrefs"] || []
        tracking_number = extract_tracking_number(shipment_urls.first)
        if tracking_number
          shipment = Shipment.find_or_initialize_by(tracking_number: tracking_number)
          shipment.order_id = order.id
          shipment.save!
        end
      end
    end

    # "shipping_fulfillment/EX00000009909220001020002E0N" から "EX00000009909220001020002E0N" を抜き出すヘルパー例
    def extract_tracking_number(url)
      return nil if url.blank?
      url.split("shipping_fulfillment/").last
    end
  end
end
