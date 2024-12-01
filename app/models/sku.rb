class Sku < ApplicationRecord
  has_many :order_sku_links
  has_many :orders, through: :order_sku_links
  has_many :sku_product_links
  has_many :products, through: :sku_product_links

  validates :sku_code, presence: true, uniqueness: true
end
