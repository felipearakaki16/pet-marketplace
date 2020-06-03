class ProductsController < ApplicationController
  before_action :set_product, only: %i(show edit update destroy)
  def index
    @products = Product.all
    
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(product_params)

    redirect_to product_path(@product.id)
  end

  def destroy
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
