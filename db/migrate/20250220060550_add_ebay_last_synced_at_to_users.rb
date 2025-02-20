class AddEbayLastSyncedAtToUsers < ActiveRecord::Migration[7.2] # Railsのバージョンに合わせる
  def change
    add_column :users, :ebay_last_synced_at, :datetime
  end
end
