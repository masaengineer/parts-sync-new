module Addressable
  extend ActiveSupport::Concern

  included do
    has_many :addresses, as: :addressable, dependent: :destroy
    has_one :primary_address, -> { where(is_primary: true) },
            as: :addressable,
            class_name: 'Address'
  end
end
