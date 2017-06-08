class Farmer < ApplicationRecord
  has_many :farmer_products
  has_many :products, through: :farmer_products
  has_many :reviews
end
