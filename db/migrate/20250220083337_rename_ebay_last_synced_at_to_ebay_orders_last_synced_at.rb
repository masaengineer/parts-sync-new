class RenameEbayLastSyncedAtToEbayOrdersLastSyncedAt < ActiveRecord::Migration[7.2] # Railsのバージョンに合わせる
  def change
    rename_column :users, :ebay_last_synced_at, :ebay_orders_last_synced_at
    add_column :users, :ebay_transaction_fees_last_synced_at, :datetime
  end
end
