class Wholesaler < ApplicationRecord
  include Addressable
  include Contactable
  has_many :quotations
end
