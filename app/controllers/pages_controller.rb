class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    i = 0
    all_products = Product.where(avaiable: true)
    @products = []
    while i < 6 do
      @products << all_products[i]
      i += 1
    end

  end

  def components
  end

  def user_purchased
    @products_buy = Product.where(user: current_user, avaiable: false)
  end

  def user_announced
    @products_sell = Product.where(user: current_user, avaiable: true)
  end

end
