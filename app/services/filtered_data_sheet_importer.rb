require 'csv'

class FilteredDataSheetImporter
  # カスタムエラークラスの定義
  class MissingSkusError < StandardError; end

  def initialize(csv_path)
    @csv_path = csv_path
  end

  def import
    Rails.logger.info "[FilteredDataSheetImporter] インポート開始: #{@csv_path}"

    csv = CSV.read(@csv_path, headers: true)
    Rails.logger.info "[FilteredDataSheetImporter] CSVの行数: #{csv.size} (ヘッダーを除く)"

    ActiveRecord::Base.transaction do
      csv.each_with_index do |row, i|
        Rails.logger.info "[FilteredDataSheetImporter] 行 #{i + 1}: #{row.to_h.inspect}"
        import_row(row)
      end
    end
  rescue StandardError => e
    Rails.logger.error "[FilteredDataSheetImporter] エラー発生: #{e.message}"
    Rails.logger.error e.backtrace.join("\n")
    raise e
  end

  private

  # 行ごとの処理
  def import_row(row)
    # CSVの各カラムを取得
    order_number      = row["order_number"]&.strip
    manufacturer_name = row["manufacturer_name"]&.strip
    purchase_price    = to_decimal(row["purchase_price"])
    handling_fee      = to_decimal(row["handling_fee"])
    photo_fee         = to_decimal(row["photo_fee"])

    # 必須項目のバリデーション
    if order_number.blank?
      Rails.logger.warn "[FilteredDataSheetImporter] order_numberが空のため、この行をスキップします: #{row.to_h.inspect}"
      return
    end

    # Orderレコードの作成または検索
    order = Order.find_or_create_by!(order_number: order_number) do |o|
      o.sale_date = Date.current  # デフォルトで現在の日付を設定
    end

    # Manufacturerレコードの作成または検索
    if manufacturer_name.present?
      Manufacturer.find_or_create_by!(name: manufacturer_name)
    end

    # Procurementレコードの作成
    create_procurement(order, purchase_price, handling_fee, photo_fee)
  end

  # Procurementレコードの作成
  def create_procurement(order, purchase_price, handling_fee, photo_fee)
    return unless purchase_price || handling_fee || photo_fee

    # 既存のProcurementレコードを更新するか、新しいものを作成
    procurement = order.procurement || order.build_procurement
    procurement.update!(
      purchase_price: purchase_price,
      handling_fee: handling_fee,
      photo_fee: photo_fee
    )
  end

  # 文字列をBigDecimalに変換
  def to_decimal(value)
    return nil if value.nil? || value.strip.empty?
    BigDecimal(value)
  rescue ArgumentError
    nil
  end
end
