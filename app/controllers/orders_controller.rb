class OrdersController < ApplicationController
  before_action :set_order, only: %i(show update)
  def index
    @orders = Product.all
  end

  def show
  end

  def create
    @order = Order.new
    @order.user = current_user
    @order.product_id = params[:product_id]
    @order.date = DateTime.now
    if @order.save
      redirect_to order_path(@order.id)
    end
  end

  def update
    @product = @order.product
    @product.user = @order.user
    @product.unavaiable!
    if @product.save
      @order.finished!
      @order.save

      redirect_to root_path
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
