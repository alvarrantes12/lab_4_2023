require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      product = Product.new(name: 'Apple', price: 1.5)
      expect(product).to be_valid
    end

    it "is not valid without a name" do
      product = Product.new(name: nil, price: 1.5)
      expect(product).to_not be_valid
    end

    it "is not valid without a price" do
      product = Product.new(name: 'Apple', price: nil)
      expect(product).to_not be_valid
    end
  end
end

