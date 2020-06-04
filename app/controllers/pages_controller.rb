class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @products = Product.where(avaiable: true)
  end

  def components
  end

  def show_user
    @products_sell = Product.where(user: current_user, avaiable: true)
    @products_buy = Product.where(user: current_user, avaiable: false)
  end

end
