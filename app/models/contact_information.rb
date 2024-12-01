class ContactInformation < ApplicationRecord
  belongs_to :contactable, polymorphic: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone, presence: true, unless: :email?
  validates :email, presence: true, unless: :phone?

  before_save :ensure_single_primary

  private

  def ensure_single_primary
    if is_primary && is_primary_changed?
      ContactInformation.where(contactable: contactable)
                       .where.not(id: id)
                       .update_all(is_primary: false)
    end
  end
end
