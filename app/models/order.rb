class Order < ApplicationRecord
  has_many :sales
  has_many :order_items
  has_many :procurements
  has_many :remarks
  has_many :order_status_histories
  has_many :shipments
  has_many :payment_fees
  has_many :advertising_costs

  belongs_to :sales_channel, foreign_key: :sales_channel_id
  belongs_to :user
  belongs_to :buyer
  belongs_to :sales_channel_fee, optional: true

  def self.report_data
    includes(
      :sales,
      :order_items,
      :procurements,
      :sales_channel,
      order_items: [:sku => [:sku_part_number_links => [:product]]]
    ).map do |order|
      order.format_report_data
    end
  end

  def format_report_data
    sale = sales.first
    procurement = procurements.first
    item = order_items.first
    product = item.sku.sku_part_number_links.first.product

    {
      order_number: order_number,
      sku: item.sku.sku_code,
      product_number: product.oem_part_number,
      maker: product.manufacturer,
      product_name: product.domestic_title,
      platform: sales_channel.channel_name,
      selling_price: sale&.price_jpy,
      cost_price: procurement&.purchase_price,
      profit: calculate_profit(sale&.price_jpy, procurement&.purchase_price),
      profit_rate: calculate_profit_rate(sale&.price_jpy, procurement&.purchase_price)
    }
  end

  private

  def calculate_profit(selling_price, cost_price)
    selling_price.to_f - cost_price.to_f
  end

  def calculate_profit_rate(selling_price, cost_price)
    return 0 if selling_price.to_f.zero?
    ((calculate_profit(selling_price, cost_price) / selling_price.to_f) * 100).round(2)
  end
end
