# == Schema Information
#
# Table name: skus
#
#  id                  :bigint           not null, primary key
#  sku_code            :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  quantity            :integer
#  sku_net_amount      :decimal(10, 2)
#  sku_gross_amount    :decimal(10, 2)
#  international_title :string
#  manufacturer_id     :bigint
#
# Indexes
#
#  index_skus_on_manufacturer_id   (manufacturer_id)
#  index_skus_on_sku_code          (sku_code)
#  index_skus_on_sku_gross_amount  (sku_gross_amount)
#  index_skus_on_sku_net_amount    (sku_net_amount)
#
# Foreign Keys
#
#  fk_rails_...  (manufacturer_id => manufacturers.id)
#
require "test_helper"

class SkuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
