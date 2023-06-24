class Product < ApplicationRecord
    belongs_to :supermarket

    validates :name, presence: true
    validates :price, presence: true

end
