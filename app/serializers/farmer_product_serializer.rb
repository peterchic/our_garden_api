class FarmerProductSerializer < ActiveModel::Serializer
  attributes :id, :farmer_id, :product_id, :quantity, :price
  belongs_to :farmer
  belongs_to :product
end
