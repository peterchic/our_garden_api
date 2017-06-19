class CreateProductCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :product_carts do |t|
      t.integer :cart_id
      t.integer :quantity
      t.integer :product_price

      t.timestamps
    end
  end
end
