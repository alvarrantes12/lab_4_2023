json.extract! product, :id, :name, :price
json.url api_product_url(product, format: :json)