# == Schema Information
#
# Table name: procurements
#
#  id             :bigint           not null, primary key
#  purchase_price :decimal(, )
#  forwarding_fee :decimal(, )
#  photo_fee      :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  handling_fee   :decimal(10, 2)
#  order_id       :bigint           not null
#
# Indexes
#
#  index_procurements_on_order_id  (order_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#
FactoryBot.define do
  factory :procurement do
    order
    purchase_price { "9.99" }
    forwarding_fee { "9.99" }
    photo_fee { "9.99" }
    handling_fee { "9.99" }
  end
end
