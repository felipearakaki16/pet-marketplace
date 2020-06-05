class ProductsController < ApplicationController
  before_action :set_product, only: %i(show edit update destroy)
  skip_before_action :authenticate_user!, only: %i(index show dog cat fish rodent)

  def index
    @products = Product.where(avaiable: true)
    
  end

  def show

    @order = Order.new
    @order.product = @product
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

  def dog
    @products = Product.tagged_with("Dogs").where(avaiable: true)
  end

  def cat
    @products = Product.tagged_with("Cats").where(avaiable: true)
  end

  def fish
    @products = Product.tagged_with("Fishes").where(avaiable: true)
  end

  def rodent
    @products = Product.tagged_with("Rodents").where(avaiable: true)
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :brand, :tag_list, :price, photos: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
