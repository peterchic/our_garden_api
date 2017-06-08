class Cart < ApplicationRecord
  has_many :product_carts
  has_many :products, through: :product_carts
  belongs_to :user
end
