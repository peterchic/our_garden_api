class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    user.password = params[:password]
    user.save
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :bio)
  end
end


# def create
#   #create new cart.create
#   #quantity, farmer_product_id, and cart_id based off params(paramd[])
# end
