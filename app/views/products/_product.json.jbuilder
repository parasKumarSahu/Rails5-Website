json.extract! product, :id, :name, :family_id, :created_at, :updated_at
json.url product_url(product, format: :json)
