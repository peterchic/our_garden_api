class Api::V1::FarmersController < ApplicationController
  def index
    farmers = Farmer.all
    render json: farmers
  end

  def show
    farmer = Farmer.find(params[:id])
    render json: farmer
  end
end
