class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :picture, :current_cart, :cart_id

  def current_cart
    object.current_cart.first.product_carts.each_with_object({}) do |product_cart, acc|
      acc[product_cart.farmer_product.product.name] = {
        info: product_cart.farmer_product.product,
        quantity: product_cart.quantity,
        price: product_cart.farmer_product.price,
        pc_id: product_cart.id
      }
    end
  end


  def cart_id
    object.current_cart.first.id
  end


end
