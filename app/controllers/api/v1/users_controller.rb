class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def sign_in
    user = User.find_by(username: params[:username])
    if(user && user.authenticate(params[:password]))
      token = JWT.encode(
        {user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"]
      )
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "ERROR"}
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      user.carts.create(user_id: 1, active_cart: false)
      token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
      render json: {user: user, token: token}
    else
      render json: {error: "ERROR"}, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :bio)
  end
end
