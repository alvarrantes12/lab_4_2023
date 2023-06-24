json.array! @products do |product|
    json.id product.id
    json.product_name product.product_name
    json.product_price product.product_price
end