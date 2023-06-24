class Product < ApplicationRecord

  validates :product_name, presence: true
  validates :product_price, presence: true

end
