class Supermarket < ApplicationRecord
    has_many :products

    validates :first_name, presence: true

end

