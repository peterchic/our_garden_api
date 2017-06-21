class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :picture, :current_cart, :cart_id

  def current_cart
    quantity = object.current_cart.first.product_carts.each_with_object({}) do |product_cart, acc|
      acc[product_cart.farmer_product.product.name] = {
        info: product_cart.farmer_product.product,
        quantity: product_cart.quantity,
        price: product_cart.farmer_product.price
      }
    end
  end

  def cart_id
    object.current_cart.first.id
  end
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
