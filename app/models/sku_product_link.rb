class SkuProductLink < ApplicationRecord
  belongs_to :sku
  belongs_to :product

  validates :sku_id, presence: true
  validates :product_id, presence: true
end
