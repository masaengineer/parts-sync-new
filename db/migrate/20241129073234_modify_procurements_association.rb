class ModifyProcurementsAssociation < ActiveRecord::Migration[7.0]
  def up
    # データを全て削除してから移行する場合
    execute "TRUNCATE procurements CASCADE"

    remove_reference :procurements, :order, foreign_key: true
    add_reference :procurements, :product, foreign_key: true, null: false
    add_index :procurements, [:product_id, :created_at]
  end
end
