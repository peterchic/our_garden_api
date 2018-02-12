class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture, :category
  has_many :farmer_products
end
