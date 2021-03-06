class Cart < ApplicationRecord
  has_many :product_carts
  has_many :farmer_products, through: :product_carts
  belongs_to :user
end
