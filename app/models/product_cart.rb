class ProductCart < ApplicationRecord
  belongs_to :farmer_product
  belongs_to :cart
end
