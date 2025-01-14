class RemoveAmountColumnsFromSkus < ActiveRecord::Migration[7.2]
  def change
    remove_column :skus, :sku_gross_amount, :decimal
    remove_column :skus, :sku_net_amount, :decimal
  end
end
