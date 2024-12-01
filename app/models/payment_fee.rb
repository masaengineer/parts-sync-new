class PaymentFee < ApplicationRecord
  belongs_to :order
  belongs_to :sales_channel
  belongs_to :currency

  validates :fee_amount, presence: true, numericality: true
  validates :fee_category, presence: true
  validates :fee_type, presence: true

  scope :by_category, ->(category) { where(fee_category: category) }
  scope :by_type, ->(type) { where(fee_type: type) }
end
