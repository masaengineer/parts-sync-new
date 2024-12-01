class OrdersController < ApplicationController
  # ... 他のアクション ...

  def create
    @order = Order.new(order_params)

    if @order.save
      # order_itemsからorder_sku_linksに変更
      if params[:order_sku_links]
        params[:order_sku_links].each do |link|
          @order.order_sku_links.create(
            sku_id: link[:sku_id],
            quantity: link[:quantity],
            price: link[:price]
          )
        end
      end
      redirect_to @order, notice: '注文が正常に作成されました。'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :order_number,
      :sale_date,
      :channel_id,
      :user_id,
      :buyer_id,
      :order_status,
      order_sku_links_attributes: [:id, :sku_id, :quantity, :price, :_destroy]
    )
  end
end
