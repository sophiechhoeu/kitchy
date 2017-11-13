json.extract! product, :id, :seller_user_id, :product_name, :description, :price, :image_data, :quantity_available, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
