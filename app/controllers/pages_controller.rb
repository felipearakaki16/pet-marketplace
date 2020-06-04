class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @products = Product.where(avaiable: true)
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
