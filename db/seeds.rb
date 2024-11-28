# データベースをクリーンアップ（依存関係の逆順）
puts "🗑️ Cleaning database..."
[
  QuotationItemChange,
  QuotationItem,
  Quotation,
  AdvertisingCost,
  PaymentFee,
  Procurement,
  Shipment,
  OrderStatusHistory,
  OrderItem,
  Order,
  Inventory,
  SkuPartNumberLink,
  Sku,
  Product,
  Buyer,
  Address,
  User,
  Manufacturer,
  ProductCategory,
  SalesChannelFee,
  SalesChannel,
  Wholesaler,
  Sale,
  Remark
].each(&:destroy_all)

# セールスチャネルの作成
puts "🏪 Creating sales channels..."
sales_channels = [
  { channel_name: "Amazon Japan", export_domestic_flag: "domestic" },
  { channel_name: "eBay", export_domestic_flag: "export" },
  { channel_name: "楽天市場", export_domestic_flag: "domestic" }
].map { |attrs| SalesChannel.create!(attrs) }

# 住所の作成
puts "📍 Creating addresses..."
addresses = [
  {
    address_primary: "1-1-1 Shibuya",
    address_secondary: "Apartment 101",
    city: "Shibuya-ku",
    state_province: "Tokyo",
    postal_code: "150-0002",
    country: "Japan",
    address_formats: "japan_format"
  },
  {
    address_primary: "123 Main St",
    city: "Los Angeles",
    state_province: "CA",
    postal_code: "90001",
    country: "USA",
    address_formats: "us_format"
  }
].map { |attrs| Address.create!(attrs) }

# ユーザーの作成
puts "👥 Creating users..."
users = [
  {
    name: "Admin User",
    email: "admin@example.com",
    password: "password123",
    role: "admin"
  },
  {
    name: "Sales Staff",
    email: "sales@example.com",
    password: "password123",
    role: "staff"
  }
].map { |attrs| User.create!(attrs) }

# 商品カテゴリーの作成
puts "📁 Creating product categories..."
categories = [
  { category_name: "エンジンパーツ", description: "エンジン関連の部品" },
  { category_name: "ブレーキパーツ", description: "ブレーキ関連の部品" }
].map { |attrs| ProductCategory.create!(attrs) }

# メーカーの作成
puts "🏭 Creating manufacturers..."
manufacturers = [
  { name: "Toyota" },
  { name: "Honda" },
  { name: "Nissan" }
].map { |attrs| Manufacturer.create!(attrs) }

# 商品の作成
puts "📦 Creating products..."
products = [
  {
    oem_part_number: "ABC123",
    is_oem: true,
    domestic_title: "純正エンジンオイルフィルター",
    international_title: "Genuine Engine Oil Filter",
    product_status: "active",
    product_categories_id: categories.first.id,
    manufacturer: manufacturers.first
  },
  {
    oem_part_number: "XYZ789",
    is_oem: false,
    domestic_title: "社外品ブレーキパッド",
    international_title: "Aftermarket Brake Pads",
    product_status: "active",
    product_categories_id: categories.second.id,
    manufacturer: manufacturers.second
  }
].map { |attrs| Product.create!(attrs) }

# SKUの作成
puts "🏷️ Creating SKUs..."
skus = [
  { sku_code: "SKU-001" },
  { sku_code: "SKU-002" }
].map { |attrs| Sku.create!(attrs) }

# SKUと商品の紐付け
puts "🔗 Linking SKUs to products..."
products.zip(skus).each do |product, sku|
  SkuPartNumberLink.create!(sku: sku, product: product)
end

# 在庫の作成
puts "📊 Creating inventory..."
products.each do |product|
  Inventory.create!(
    product: product,
    quantity: rand(10..100),
    stock_order_date: Date.today - rand(1..30),
    stock_type: ["regular", "backorder"].sample
  )
end

# バイヤーの作成
puts "🛍️ Creating buyers..."
buyers = addresses.map do |address|
  Buyer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: address
  )
end

# 注文の作成
puts "📝 Creating orders..."
5.times do
  order = Order.create!(
    order_number: "ORD-#{SecureRandom.hex(4).upcase}",
    sale_date: Date.today - rand(1..30),
    sales_channel: sales_channels.sample,
    user: users.sample,
    buyer: buyers.sample,
    order_status: ["pending", "processing", "shipped", "delivered"].sample
  )

  # 注文アイテムの作成
  OrderItem.create!(
    order: order,
    sku: skus.sample,
    quantity: rand(1..5),
    price: rand(1000..50000)
  )

  # 注文ステータス履歴の作成
  OrderStatusHistory.create!(
    order: order,
    order_status: order.order_status,
    status_change_date: order.created_at,
    changed_by: order.user.name
  )

  # 配送情報の作成
  Shipment.create!(
    order: order,
    carrier: ["DHL", "FedEx", "UPS"].sample,
    shipping_method: ["air", "ground"].sample,
    weight: rand(0.1..10.0).round(2),
    tracking_number: "TRK#{SecureRandom.hex(8).upcase}",
    customer_domestic_shipping: rand(500..2000),
    customer_international_shipping: rand(2000..10000)
  )

  # 備考の作成
  Remark.create!(
    order: order,
    partner_note: "Partner note for order #{order.order_number}",
    internal_note: "Internal note for order #{order.order_number}"
  )
end

# セールスチャネル手数料の作成
puts "💰 Creating sales channel fees..."
sales_channel_fees = sales_channels.map do |channel|
  SalesChannelFee.create!(
    sales_channel: channel,
    fee_rate: rand(0.05..0.15)
  )
end

# 調達の作成
puts "📦 Creating procurements..."
5.times do
  Procurement.create!(
    order: Order.all.sample,
    purchase_price: rand(1000..50000),
    domestic_transfer_fee: rand(100..500),
    forwarding_fee: rand(50..200),
    photo_fee: rand(10..50)
  )
end

# 支払い手数料の作成
puts "💳 Creating payment fees..."
5.times do
  PaymentFee.create!(
    order: Order.all.sample,
    fee_type: ["credit_card", "bank_transfer"].sample,
    fee_rate: rand(0.01..0.05),
    option: rand(1..3)
  )
end

# 広告費用の作成
puts "📈 Creating advertising costs..."
5.times do
  AdvertisingCost.create!(
    order: Order.all.sample,
    product_ad_cost: rand(100..1000)
  )
end

# 卸売業者の作成
puts "🏢 Creating wholesalers..."
wholesalers = [
  { name: "Wholesaler A", contact_info: "contact@wholesalera.com", address: "123 Wholesale St, Tokyo" },
  { name: "Wholesaler B", contact_info: "contact@wholesalerb.com", address: "456 Wholesale Ave, Osaka" }
].map { |attrs| Wholesaler.create!(attrs) }

# 見積もりの作成
puts "📝 Creating quotations..."
5.times do
  quotation = Quotation.create!(
    wholesaler: wholesalers.sample,
    quotation_date: Date.today - rand(1..30),
    status: ["pending", "approved", "rejected"].sample,
    estimated_delivery: Date.today + rand(1..30),
    wholesaler_remarks: "Sample remark",
    notes: "Sample note"
  )

  # 見積もりアイテムの作成
  3.times do
    product = Product.all.sample
    quotation_item = QuotationItem.create!(
      quotation: quotation,
      product: product,
      quantity: rand(1..10),
      estimated_price: rand(1000..5000)
    )

    # 見積もりアイテム変更の作成
    QuotationItemChange.create!(
      quotation_item: quotation_item,
      original_part_number: product.oem_part_number,
      new_part_number: "NEW#{SecureRandom.hex(4).upcase}",
      change_date: Date.today,
      change_reason: "Sample reason"
    )
  end
end

puts "✅ Seed data creation completed!"
