# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_01_081258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_primary"
    t.string "address_secondary"
    t.string "city"
    t.string "state_province"
    t.string "postal_code"
    t.string "country"
    t.string "address_formats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.boolean "is_primary", default: true
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "advertising_costs", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.decimal "product_ad_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_advertising_costs_on_order_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string "contactable_type", null: false
    t.bigint "contactable_id", null: false
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.string "contact_person"
    t.text "note"
    t.boolean "is_primary", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contact_informations_on_contactable"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "currency_code", null: false
    t.string "currency_name", null: false
    t.string "currency_symbol"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_code"], name: "index_currencies_on_currency_code", unique: true
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.string "item_name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_inventories_on_product_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_sku_links", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "sku_id", null: false
    t.integer "quantity", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id", "sku_id"], name: "index_order_sku_links_on_order_id_and_sku_id", unique: true
    t.index ["order_id"], name: "index_order_sku_links_on_order_id"
    t.index ["sku_id"], name: "index_order_sku_links_on_sku_id"
  end

  create_table "order_status_histories", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "order_status"
    t.datetime "status_change_date"
    t.string "changed_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_status_histories_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.date "sale_date"
    t.bigint "sales_channel_id", null: false
    t.bigint "user_id", null: false
    t.bigint "buyer_id", null: false
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["sales_channel_id"], name: "index_orders_on_sales_channel_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payment_fees", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "fee_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sales_channel_id"
    t.string "fee_category"
    t.bigint "currency_id"
    t.datetime "fee_confirmed_at"
    t.text "note"
    t.index ["currency_id"], name: "index_payment_fees_on_currency_id"
    t.index ["order_id", "fee_category", "fee_type"], name: "index_payment_fees_on_order_id_and_fee_category_and_fee_type"
    t.index ["order_id"], name: "index_payment_fees_on_order_id"
    t.index ["sales_channel_id"], name: "index_payment_fees_on_sales_channel_id"
  end

  create_table "procurements", force: :cascade do |t|
    t.decimal "purchase_price"
    t.decimal "domestic_transfer_fee"
    t.decimal "forwarding_fee"
    t.decimal "photo_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id", null: false
    t.index ["product_id", "created_at"], name: "index_procurements_on_product_id_and_created_at"
    t.index ["product_id"], name: "index_procurements_on_product_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "category_name"
    t.text "description"
    t.integer "parent_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "oem_part_number"
    t.boolean "is_oem"
    t.string "domestic_title"
    t.string "international_title"
    t.string "product_status"
    t.bigint "product_categories_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "manufacturer_id", null: false
    t.index ["manufacturer_id"], name: "index_products_on_manufacturer_id"
    t.index ["product_categories_id"], name: "index_products_on_product_categories_id"
  end

  create_table "quotation_item_changes", force: :cascade do |t|
    t.bigint "quotation_item_id", null: false
    t.string "original_part_number"
    t.string "new_part_number"
    t.datetime "change_date"
    t.string "change_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_item_id"], name: "index_quotation_item_changes_on_quotation_item_id"
  end

  create_table "quotation_items", force: :cascade do |t|
    t.bigint "quotation_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "estimated_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_quotation_items_on_product_id"
    t.index ["quotation_id"], name: "index_quotation_items_on_quotation_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.bigint "wholesaler_id", null: false
    t.date "quotation_date"
    t.string "status"
    t.date "estimated_delivery"
    t.text "wholesaler_remarks"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wholesaler_id"], name: "index_quotations_on_wholesaler_id"
  end

  create_table "remarks", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.text "partner_note"
    t.text "internal_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_remarks_on_order_id"
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.decimal "price_original"
    t.string "currency_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "currency_id"
    t.index ["currency_id"], name: "index_sales_on_currency_id"
    t.index ["order_id"], name: "index_sales_on_order_id"
  end

  create_table "sales_channel_fees", force: :cascade do |t|
    t.bigint "sales_channel_id", null: false
    t.decimal "fee_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sales_channel_id"], name: "index_sales_channel_fees_on_sales_channel_id"
  end

  create_table "sales_channels", force: :cascade do |t|
    t.string "channel_name"
    t.string "export_domestic_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "carrier"
    t.string "shipping_method"
    t.float "weight"
    t.float "length"
    t.float "width"
    t.float "height"
    t.string "destination_country"
    t.string "tracking_number"
    t.float "customer_domestic_shipping"
    t.float "customer_international_shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shipments_on_order_id"
  end

  create_table "sku_product_links", force: :cascade do |t|
    t.bigint "sku_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sku_product_links_on_product_id"
    t.index ["sku_id", "product_id"], name: "index_sku_product_links_on_sku_id_and_product_id", unique: true
    t.index ["sku_id"], name: "index_sku_product_links_on_sku_id"
  end

  create_table "skus", force: :cascade do |t|
    t.string "sku_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "profile_picture_url"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wholesalers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "advertising_costs", "orders"
  add_foreign_key "inventories", "products"
  add_foreign_key "order_sku_links", "orders"
  add_foreign_key "order_sku_links", "skus"
  add_foreign_key "order_status_histories", "orders"
  add_foreign_key "orders", "buyers"
  add_foreign_key "orders", "sales_channels"
  add_foreign_key "orders", "users"
  add_foreign_key "payment_fees", "currencies"
  add_foreign_key "payment_fees", "orders"
  add_foreign_key "payment_fees", "sales_channels"
  add_foreign_key "procurements", "products"
  add_foreign_key "products", "manufacturers"
  add_foreign_key "products", "product_categories", column: "product_categories_id"
  add_foreign_key "quotation_item_changes", "quotation_items"
  add_foreign_key "quotation_items", "products"
  add_foreign_key "quotation_items", "quotations"
  add_foreign_key "quotations", "wholesalers"
  add_foreign_key "remarks", "orders"
  add_foreign_key "sales", "currencies"
  add_foreign_key "sales", "orders"
  add_foreign_key "sales_channel_fees", "sales_channels"
  add_foreign_key "shipments", "orders"
  add_foreign_key "sku_product_links", "products"
  add_foreign_key "sku_product_links", "skus"
end
