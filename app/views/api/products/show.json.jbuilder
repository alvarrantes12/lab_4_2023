json.product do
    json.id @product.id
    json.name @product.name
    json.price @product.price   
    json.supermarket do 
        json.first_name @product.supermarket.first_name
    end
end