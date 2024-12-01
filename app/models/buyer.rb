class Buyer < ApplicationRecord
  include Addressable
  include Contactable
  has_many :orders
end
