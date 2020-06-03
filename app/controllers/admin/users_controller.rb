class Admin::UsersController < ActionController::Base
    
  def show
    user = User.find(params[:id])
    @products = Product.where(user_id: user.id)  
  end
end
