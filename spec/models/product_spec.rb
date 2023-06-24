require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(product_name: "Huevos",
                        product_price: "1000")
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without product_name" do
    subject.product_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without product_price" do
    subject.product_price = nil
    expect(subject).to_not be_valid
  end

end
