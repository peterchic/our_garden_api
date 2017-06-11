class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :address, :zip_code, :certified_organic, :local, :picture
  has_many :farmer_products
  has_many :products, through: :farmer_products

end
