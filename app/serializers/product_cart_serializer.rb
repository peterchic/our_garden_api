class ProductCartSerializer < ActiveModel::Serializer
  attributes :current_cart
  def current_cart
    object.cart.product_carts.each_with_object({}) do |product_cart, acc|
      acc[product_cart.farmer_product.product.name] = {
        info: product_cart.farmer_product.product,
        quantity: product_cart.quantity,
        price: product_cart.farmer_product.price,
        pc_id: product_cart.id
      }
    end
  end
end
