class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def sign_in
    user = User.find_by(username: params[:username])
    # byebug
    if(user && user.authenticate(params[:password]))
      token = JWT.encode(
        {user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"]
      )
      render json: {user: user.username, token: token}
    else
      render json: {error: "ASSHOLE"}
    end
  end

  def create
    user = User.new(user_params)
    # byebug

    if user.save
      token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
      render json: {user: user.username, token: token}
    else
      # byebug
      render json: {error: "ERROR"}, status: 400
    end
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
