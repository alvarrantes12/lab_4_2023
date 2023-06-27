require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Pepsi",
                        price: 1100.00)
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a price equal to or less than 0" do
    subject.price = 0
    expect(subject).to_not be_valid
  end
end