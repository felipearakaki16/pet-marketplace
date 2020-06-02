class OrdersController < ApplicationController
  before_action :set_order, only: %i(:show destroy)
  def index
    @orders = Product.all
  end

  def show
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to order_path(@order.id)
    end
  end

  def destroy
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:product_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
