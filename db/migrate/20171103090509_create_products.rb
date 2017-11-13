class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :seller_user_id
      t.string :product_name
      t.text :description
      t.integer :price
      t.text :image_data
      t.string :quantity_available
      t.integer :category_id

      t.timestamps
    end
  end
end
