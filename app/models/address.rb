class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates :address_primary, presence: true
  validates :city, presence: true
  validates :state_province, presence: true
  validates :postal_code, presence: true
  validates :country, presence: true

  before_save :ensure_single_primary

  private

  def ensure_single_primary
    if is_primary && is_primary_changed?
      Address.where(addressable: addressable)
             .where.not(id: id)
             .update_all(is_primary: false)
    end
  end
end
