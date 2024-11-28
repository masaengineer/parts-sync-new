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

ActiveRecord::Schema[7.2].define(version: 2024_11_28_134942) do
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
    t.string "email"
    t.bigint "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_buyers_on_address_id"
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
    t.date "stock_order_date"
    t.string "stock_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_inventories_on_product_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "sku_id", null: false
    t.integer "quantity"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["sku_id"], name: "index_order_items_on_sku_id"
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
    t.decimal "fee_rate"
    t.integer "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payment_fees_on_order_id"
  end

  create_table "procurements", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.decimal "purchase_price"
    t.decimal "domestic_transfer_fee"
    t.decimal "forwarding_fee"
    t.decimal "photo_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_procurements_on_order_id"
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
    t.decimal "conversion_rate"
    t.decimal "price_jpy"
    t.date "conversion_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "sku_part_number_links", force: :cascade do |t|
    t.bigint "sku_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sku_part_number_links_on_product_id"
    t.index ["sku_id"], name: "index_sku_part_number_links_on_sku_id"
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
    t.string "contact_info"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "advertising_costs", "orders"
  add_foreign_key "buyers", "addresses"
  add_foreign_key "inventories", "products"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "skus"
  add_foreign_key "order_status_histories", "orders"
  add_foreign_key "orders", "buyers"
  add_foreign_key "orders", "sales_channels"
  add_foreign_key "orders", "users"
  add_foreign_key "payment_fees", "orders"
  add_foreign_key "procurements", "orders"
  add_foreign_key "products", "manufacturers"
  add_foreign_key "products", "product_categories", column: "product_categories_id"
  add_foreign_key "quotation_item_changes", "quotation_items"
  add_foreign_key "quotation_items", "products"
  add_foreign_key "quotation_items", "quotations"
  add_foreign_key "quotations", "wholesalers"
  add_foreign_key "remarks", "orders"
  add_foreign_key "sales", "orders"
  add_foreign_key "sales_channel_fees", "sales_channels"
  add_foreign_key "shipments", "orders"
  add_foreign_key "sku_part_number_links", "products"
  add_foreign_key "sku_part_number_links", "skus"
end
