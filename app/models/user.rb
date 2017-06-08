class User < ApplicationRecord
  has_secure_password

  has_many :carts
  has_many :product_carts, through: :carts
  has_many :farmer_products, through: :product_carts, source: :farmer_product
  has_many :farmers, through: :farmer_products
  has_many :products, through: :farmer_products
  has_many :reviews

  validates_presence_of :username
end
