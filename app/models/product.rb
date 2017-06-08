class Product < ApplicationRecord
  has_many :farmer_products
  has_many :farmers, through: :farmer_products
end
