class Sale < ApplicationRecord
  belongs_to :order
  belongs_to :currency

  validates :price_original, presence: true, numericality: true
end
