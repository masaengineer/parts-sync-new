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
FactoryBot.define do
  factory :sku do
    sequence(:sku_code) { |n| "SKU-#{format('%08d', n)}" }
    quantity { Faker::Number.between(from: 1, to: 100) }
    sku_net_amount { Faker::Commerce.price(range: 1000..10000) }
    sku_gross_amount { sku_net_amount * 1.1 }  # 税込み金額を想定
    international_title { Faker::Commerce.product_name }

    trait :with_manufacturer do
      after(:create) do |sku|
        create(:manufacturer, sku: sku)
      end
    end

    trait :with_orders do
      after(:create) do |sku|
        create_list(:order_sku_link, 2, sku: sku)
      end
    end
  end
end
