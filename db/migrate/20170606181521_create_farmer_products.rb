class CreateFarmerProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :farmer_products do |t|
      t.integer :farmer_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :price, precision: 30, scale: 2

      t.timestamps
    end
  end
end
