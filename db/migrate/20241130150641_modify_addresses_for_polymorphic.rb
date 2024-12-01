class ModifyAddressesForPolymorphic < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :addressable, polymorphic: true
    add_column :addresses, :is_primary, :boolean, default: true
  end
end
