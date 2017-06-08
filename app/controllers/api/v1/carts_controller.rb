class Api::V1::CartsController < ApplicationController
  def index
    carts = Cart.all
    render json: carts
  end
end
