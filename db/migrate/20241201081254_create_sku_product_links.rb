class CreateSkuProductLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :sku_product_links do |t|
      t.references :sku, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end

    # sku_idとproduct_idの組み合わせに対して一意のインデックスを追加
    add_index :sku_product_links, [:sku_id, :product_id], unique: true
  end
end
