class PagesController < ApplicationController
  def home
    @products = Product.where(avaiable: true)
  end

  def components
  end
end
