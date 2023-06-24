class Product < ApplicationRecord
    validates :product_name, presence: true
    validates :price, presence: true
end
