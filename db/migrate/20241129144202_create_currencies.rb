class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :currency_code, null: false
      t.string :currency_name, null: false
      t.string :currency_symbol
      t.boolean :is_active, default: true

      t.timestamps
    end

    add_index :currencies, :currency_code, unique: true
  end
end
