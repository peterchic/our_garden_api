class Api::V1::FarmerProductsController < ApplicationController
  def index
    farmer_products = FarmerProduct.all
    render json: farmer_products
  end
end
