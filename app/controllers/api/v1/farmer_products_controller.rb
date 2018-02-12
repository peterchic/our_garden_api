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
    farmer_products = FarmerProduct.all
    render json: farmer_products
  end
end
