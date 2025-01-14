# == Schema Information
#
# Table name: skus
#
#  id                  :bigint           not null, primary key
#  sku_code            :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  quantity            :integer
#  international_title :string
#  manufacturer_id     :bigint
#
# Indexes
#
#  index_skus_on_manufacturer_id  (manufacturer_id)
#  index_skus_on_sku_code         (sku_code)
#
# Foreign Keys
#
#  fk_rails_...  (manufacturer_id => manufacturers.id)
#
class Sku < ApplicationRecord
  has_many :order_sku_links
  has_many :orders, through: :order_sku_links
  has_many :procurements, through: :orders
  belongs_to :manufacturer, optional: true
  validates :sku_code, presence: true, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    %w[
      sku_code
      quantity
      sku_net_amount
      sku_gross_amount
      created_at
      updated_at
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[order_sku_links orders manufacturer]
  end
end
