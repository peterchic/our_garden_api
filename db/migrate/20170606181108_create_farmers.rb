class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.text :bio
      t.string :address
      t.string :zip_code
      t.boolean :certified_organic
      t.boolean :local
      t.string :picture

      t.timestamps
    end
  end
end
