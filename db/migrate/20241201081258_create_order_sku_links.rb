class CreateOrderSkuLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :order_sku_links do |t|
      t.references :order, null: false, foreign_key: true
      t.references :sku, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps
    end

    # 注文内での重複SKUを防ぐ
    add_index :order_sku_links, [:order_id, :sku_id], unique: true
  end
end
