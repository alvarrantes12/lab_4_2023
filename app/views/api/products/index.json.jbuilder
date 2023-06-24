json.array! @products do |product|
    json.id product.id
    json.name product.name
    json.year product.price
end