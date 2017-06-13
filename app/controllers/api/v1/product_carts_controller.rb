class Api::V1::ProductCartsController < ApplicationController

  def index
    product_carts = ProductCart.all
    render json: product_carts
  end

  def create
    # byebug
    product_cart = ProductCart.new(prod_cart_params)
    farmer_product = FarmerProduct.find_by(farmer_id: params[:product_cart][:farmer_id], product_id: params[:product_cart][:product_id])
    new_quantity = farmer_product.quantity - params[:product_cart][:quantity].to_i

    product_cart.farmer_product_id = farmer_product.id

    farmer_product.update(:quantity => new_quantity)
    product_cart.save
    render json: product_cart
  end

  def update
    product_cart = ProductCart.find(params[:id])
      product_cart.update(prod_cart_params)
      render json: product_cart
  end

private

  def prod_cart_params
    params.require(:product_cart).permit(:quantity, :cart_id)
  end

end
