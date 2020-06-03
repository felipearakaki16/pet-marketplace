class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def components
  end
end
