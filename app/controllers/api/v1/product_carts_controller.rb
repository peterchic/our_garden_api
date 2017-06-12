class Api::V1::ProductCartsController < ApplicationController

  def index
    product_carts = ProductCart.all
    render json: product_carts
  end

  def create
    # farmer_product = FarmerProduct.create(
    #         farmer_id: params[:farmer_product][:farmer_id],
    #         product_id: params[:farmer_product][:product_id],
    #         quantity: params[:farmer_product][:quantity])
    product_cart = ProductCart.new(prod_cart_params)
    farmer = FarmerProduct.find_by(params[:farmer_product_id])
    farmer.quantity - product_cart.quantity
    # byebug
    # product_cart.farmer_product_id = farmer_product.id
    # product_cart.cart_id = cart.id
    farmer.save
    product_cart.save
    render json: product_cart
    # FarmerProduct.find(params[:id])
  end

  def update
    product_cart = ProductCart.find(params[:id])
      product_cart.update(prod_cart_params)
      render json: product_cart
  end


  # watchlist = Watchlist.find(params[:id])
  #   watchlist.update(watchlist_params)
  #   render json: watchlist


private

  def prod_cart_params
    params.require(:product_cart).permit(:quantity, :farmer_product_id, :cart_id)
  end

end
