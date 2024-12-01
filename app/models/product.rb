class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :product_category, foreign_key: 'product_categories_id'

  has_many :sku_product_links
  has_many :skus, through: :sku_product_links

  has_many :inventories
  has_many :procurements

  validates :oem_part_number, presence: true
  validates :storage_location, presence: true
  validates :storage_shelf, presence: true
  validates :storage_box, presence: true

  # 保管場所の完全な文字列を返すメソッド
  def full_storage_location
    "#{storage_location}-#{storage_shelf}-#{storage_box}"
  end
end
