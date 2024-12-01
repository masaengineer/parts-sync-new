class RemoveUnusedColumnsFromPaymentFees < ActiveRecord::Migration[7.0]
  def change
    remove_column :payment_fees, :fee_rate, :decimal
    remove_column :payment_fees, :option, :integer
  end
end
