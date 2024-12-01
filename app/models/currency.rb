class Currency < ApplicationRecord
  has_many :sales
  has_many :payment_fees

  validates :currency_code, presence: true, uniqueness: true
  validates :currency_name, presence: true

  scope :active, -> { where(is_active: true) }
end
