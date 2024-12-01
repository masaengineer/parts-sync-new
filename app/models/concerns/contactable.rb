module Contactable
  extend ActiveSupport::Concern

  included do
    has_many :contact_informations, as: :contactable, dependent: :destroy
    has_one :primary_contact, -> { where(is_primary: true) },
            as: :contactable,
            class_name: 'ContactInformation'
  end
end
