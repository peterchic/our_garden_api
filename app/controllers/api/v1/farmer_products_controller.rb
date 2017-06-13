class Api::V1::FarmerProductsController < ApplicationController
  def index
    farmer_products = FarmerProduct.all
    render json: farmer_products
  end

  def show
    farmer_product = FarmerProduct.find(params[:id])
    render json: farmer_product
  end

  def update
    # byebug
    # farmer_product = FarmerProduct.find_by(farmer_id: params[:id])
    # new_quantity = farmer_product.quantity - params[:product_cart][:quantity].to_i
    # farmer_product.update(quantity: new_quantity)
    # render json: farmer_product
  end
end
