class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def login
    user = User.find_by(username: params[:username])
    if(user && user.authenticate(params[:password]))
      token = JWT.encode(
        {user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"]
      )
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "No account or password found"}
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      user.carts.create(active_cart: true)
      token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "Missing information. Please fill in all fields below."}, status: 400
    end
  end

  def update
    user = User.find(params[:id])
    # byebug
    user.update(user_params) unless params[:user].blank?
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def decode_token
    jwt = JWT.decode(params[:token], ENV['JWT_SECRET'], ENV['JWT_ALGORITHM'])
    user = User.find(jwt[0]['user_id'])
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :bio, :picture)
  end
end
