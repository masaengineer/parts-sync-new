class RemoveAddressAndContactColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :buyers, :email
    remove_reference :buyers, :address, foreign_key: true

    remove_column :wholesalers, :contact_info
    remove_column :wholesalers, :address
  end
end
