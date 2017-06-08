class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :category

      t.timestamps
    end
  end
end
