class Product < ApplicationRecord
    validates :name, presence: true, length: { maximum: 10 }
    validates :price, presence: true, length: { maximum: 8 }
end
