class OrderSkuLinksController < ApplicationController
  before_action :set_order_sku_link, only: [:show, :edit, :update, :destroy]

  def index
    @order_sku_links = OrderSkuLink.all
  end

  def show
  end

  def new
    @order_sku_link = OrderSkuLink.new
  end

  def edit
  end

  def create
    @order_sku_link = OrderSkuLink.new(order_sku_link_params)

    if @order_sku_link.save
      redirect_to @order_sku_link, notice: '注文商品が正常に作成されました。'
    else
      render :new
    end
  end

  def update
    if @order_sku_link.update(order_sku_link_params)
      redirect_to @order_sku_link, notice: '注文商品が正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @order_sku_link.destroy
    redirect_to order_sku_links_url, notice: '注文商品が正常に削除されました。'
  end

  private

  def set_order_sku_link
    @order_sku_link = OrderSkuLink.find(params[:id])
  end

  def order_sku_link_params
    params.require(:order_sku_link).permit(:order_id, :sku_id, :quantity, :price)
  end
end
