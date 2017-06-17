class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :picture, :current_cart, :products

  # has_many :carts

  # def products
  #   object.cart.products
  # end
end


# attributes :id, :name, :username, :bio, :picture, :products

# def products
#   object.cart.products
# end


# attributes :id, :username, :bio, :picture, :carts, :products
#
# def products
#   object.cart.products
# end
