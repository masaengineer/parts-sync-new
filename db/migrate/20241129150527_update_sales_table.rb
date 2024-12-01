class UpdateSalesTable < ActiveRecord::Migration[7.0]
  def change
    change_table :sales do |t|
      t.remove :conversion_rate, :price_jpy, :conversion_date
      t.references :currency, foreign_key: true
    end
  end
end
