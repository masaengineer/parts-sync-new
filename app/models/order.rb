class Order < ApplicationRecord
  has_many :order_sku_links, dependent: :destroy
  has_many :skus, through: :order_sku_links

  has_many :sales
  has_many :remarks
  has_many :shipments
  has_many :payment_fees
  has_many :advertising_costs
  has_many :order_status_histories

  belongs_to :sales_channel, foreign_key: :sales_channel_id
  belongs_to :user
  belongs_to :buyer
  belongs_to :sales_channel_fee, optional: true

  def self.report_data
    includes(
      :sales,
      :order_sku_links,
      order_sku_links: [:sku => [:sku_part_number_links => [:product]]]
    ).flat_map do |order|
      order.format_report_data
    end
  end

  def format_report_data
    order_sku_links.map do |item|
      sale = sales.find_by(order_sku_link: item)
      product = item.sku.sku_part_number_links.first&.product

      {
        order_number: order_number,
        order_date: created_at,
        sku: item.sku.sku_code,
        quantity: item.quantity,
        product_number: product&.oem_part_number,
        maker: product&.manufacturer&.name,
        product_name: product&.domestic_title,
        platform: sales_channel.channel_name,
        selling_price: sale&.price_jpy,
        cost_price: item.price,
        profit: calculate_profit(sale&.price_jpy, item.price),
        profit_rate: calculate_profit_rate(sale&.price_jpy, item.price),
        sale_id: sale&.id,
        procurement_id: item.id
      }
    end
  end

  private

  def calculate_profit(selling_price, cost_price)
    return 0 if selling_price.nil? || cost_price.nil?
    selling_price.to_f - cost_price.to_f
  end

  def calculate_profit_rate(selling_price, cost_price)
    return 0 if selling_price.nil? || cost_price.nil? || selling_price.to_f.zero?
    ((calculate_profit(selling_price, cost_price) / selling_price.to_f) * 100).round(2)
  end
end

