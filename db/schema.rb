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

ActiveRecord::Schema[7.2].define(version: 2025_01_12_081449) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.string "item_name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "initial_schemas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_manufacturers_on_name"
  end

  create_table "order_sku_links", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "sku_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id", "sku_id"], name: "index_order_sku_links_on_order_id_and_sku_id", unique: true
    t.index ["order_id"], name: "index_order_sku_links_on_order_id"
    t.index ["sku_id"], name: "index_order_sku_links_on_sku_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.date "sale_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["order_number"], name: "index_orders_on_order_number"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payment_fees", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fee_category"
    t.decimal "fee_amount"
    t.index ["order_id"], name: "index_payment_fees_on_order_id"
  end

  create_table "procurements", force: :cascade do |t|
    t.decimal "purchase_price"
    t.decimal "forwarding_fee"
    t.decimal "photo_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id", null: false
    t.decimal "handling_fee", precision: 10, scale: 2
    t.index ["order_id"], name: "index_procurements_on_order_id", unique: true
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.decimal "order_net_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "order_gross_amount"
    t.index ["order_id"], name: "index_sales_on_order_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.decimal "customer_international_shipping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cpass_trade_id"
    t.bigint "order_id"
    t.string "tracking_number"
    t.index ["order_id"], name: "index_shipments_on_order_id"
  end

  create_table "skus", force: :cascade do |t|
    t.string "sku_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.string "international_title"
    t.bigint "manufacturer_id"
    t.index ["manufacturer_id"], name: "index_skus_on_manufacturer_id"
    t.index ["sku_code"], name: "index_skus_on_sku_code"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "profile_picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name"
    t.string "first_name"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "order_sku_links", "orders"
  add_foreign_key "order_sku_links", "skus"
  add_foreign_key "orders", "users"
  add_foreign_key "payment_fees", "orders"
  add_foreign_key "procurements", "orders"
  add_foreign_key "sales", "orders"
  add_foreign_key "skus", "manufacturers"
end
