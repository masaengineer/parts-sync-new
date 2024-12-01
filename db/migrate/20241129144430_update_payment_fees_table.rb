class UpdatePaymentFeesTable < ActiveRecord::Migration[7.0]
  def change
    # 既存のカラムの確認
    unless column_exists?(:payment_fees, :sales_channel_id)
      add_reference :payment_fees, :sales_channel, foreign_key: true
    end

    unless column_exists?(:payment_fees, :fee_category)
      add_column :payment_fees, :fee_category, :string
    end

    # fee_typeは既に存在するのでスキップ

    unless column_exists?(:payment_fees, :currency_id)
      add_reference :payment_fees, :currency, foreign_key: true
    end

    unless column_exists?(:payment_fees, :fee_confirmed_at)
      add_column :payment_fees, :fee_confirmed_at, :datetime
    end

    unless column_exists?(:payment_fees, :note)
      add_column :payment_fees, :note, :text
    end

    # インデックスが存在しない場合のみ追加
    unless index_exists?(:payment_fees, [:order_id, :fee_category, :fee_type])
      add_index :payment_fees, [:order_id, :fee_category, :fee_type]
    end
  end
end 
