json.array! @products do |product|
    json.product_id product.id
    json.product_name product.product_name
    json.price product.price
end
